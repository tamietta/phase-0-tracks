require 'sqlite3'
# require_relative 'article-sql'
load 'article-sql.rb'

# METHODS

# Connect to existing database.
def connect_database(name)
  SQLite3::Database.new("#{name}.db")
end

# Create new database.
def init_database(name)
  db = connect_database(name)
  db.execute_batch(sql_create_tables)
  db
end

# Insert new author.
def insert_author(db, first_name, last_name, get_id=false)
  db.execute(sql_insert_author, first_name, last_name)
  get_author_id(db, first_name, last_name) if get_id
end

def get_author_id(db, first_name, last_name)
  db.execute(sql_get_author_id, first_name, last_name)[0][0]
end

# Insert new publisher.
def insert_publisher(db, publisher, get_id=false)
  db.execute(sql_insert_publisher, publisher)
  get_pub_id(db, publisher) if get_id
end

def get_pub_id(db, publisher)
  db.execute(sql_get_pub_id, publisher)[0][0]
end

# Insert new category.
def insert_category(db, category, get_id=false)
  db.execute(sql_insert_category, category)
  get_cat_id(db, category) if get_id
end

def get_cat_id(db, category)
  db.execute(sql_get_cat_id, category)[0][0]
end

# Set up Authors, Publisher, and Category tables to retrieve primary key IDs.
def set_up_insert_article(db, first_name, last_name, publisher, category)
  author_id = insert_author(db, first_name, last_name, get_id=true)
  pub_id = insert_publisher(db, publisher, get_id=true)
  cat_id = insert_category(db, category, get_id=true)
  [author_id, pub_id, cat_id]
end

# Insert new article info.
def insert_article(db, title, url, first_name=nil, last_name=nil, publisher=nil,
                   category=nil, date=nil, read_status=0)
  author_id, pub_id, cat_id = \
    set_up_insert_article(db, first_name, last_name, publisher, category)

  ordered_bind_var = [title, author_id, pub_id, cat_id, date, url, read_status]
  db.execute(sql_insert_article, *ordered_bind_var)
end

# Delete author (and all articles by author).
def delete_author(db, first_name, last_name)
  db.execute(sql_delete_author, first_name, last_name)
end

# Delete publisher (and all articles by publisher).
def delete_pub(db, publisher)
  db.execute(sql_delete_publisher, publisher)
end

# Delete category (and all articles on category).
def delete_cat(db, category)
  db.execute(sql_delete_category, category)
end

# Delete an article by article ID.
def delete_article(db, article_id)
  db.execute(sql_delete_article, article_id)
end

# Hash to set SELECTED columns
def col_format
  {"short" => sql_get_articles, "long" => sql_get_articles_info}
end

# Get articles.
def get_articles(db, format_opt="short")
  query = col_format[format_opt] + sql_from
  db.execute(query)
end

# Get articles by order criterion.
def get_articles_order(db, format_opt="short", criterion)
  order = {"author" => sql_order_by_author,
          "publisher" => sql_order_by_pub,
          "category" => sql_order_by_cat}
  query = col_format[format_opt] + sql_from + order[criterion]
  db.execute(query)
end

# Get articles filtered by author.
def get_articles_by_author(db, format_opt="short", first_name, last_name)
  query = col_format[format_opt] + sql_from + sql_search_by_author
  db.execute(query, first_name, last_name)
end

# Get articles filtered by publisher.
def get_articles_by_pub(db, format_opt="short", publisher)
  query = col_format[format_opt] + sql_from + sql_search_by_pub
  db.execute(query, publisher)
end

# Get articles filtered by category.
def get_articles_by_pub(db, format_opt="short", category)
  query = col_format[format_opt] + sql_from + sql_search_by_cat
  db.execute(query, category)
end

# Get articles filtered by read status.
def get_articles_by_status(db, format_opt="short", reader_status)
  query = col_format[format_opt] + sql_from + sql_read_status
  db.execute(query, reader_status)
end
