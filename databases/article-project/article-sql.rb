# SQL COMMANDS

# Create tables as outlined in articles-schema.png.
def sql_create_tables
   <<-SQL
    PRAGMA foreign_keys=on;
    
    -- Create table only if named table does NOT exist.
    CREATE TABLE IF NOT EXISTS Authors (
      author_id INTEGER PRIMARY KEY,
      first_name VARCHAR(255),
      last_name VARCHAR(255),

      CONSTRAINT author_unique 
      UNIQUE (first_name, last_name)
    );

    CREATE TABLE IF NOT EXISTS Publishers (
      pub_id INTEGER PRIMARY KEY,
      name VARCHAR(255),

      CONSTRAINT pub_unique
      UNIQUE (name)
    );

    CREATE TABLE IF NOT EXISTS Categories (
      cat_id INTEGER PRIMARY KEY,
      topic VARCHAR(255),

      CONSTRAINT cat_unique
      UNIQUE (topic)
    );

    CREATE TABLE IF NOT EXISTS Articles (
      article_id INTEGER PRIMARY KEY,
      title VARCHAR(255),
      author_id INTEGER,
      pub_id INTEGER,
      cat_id INTEGER,
      article_date DATE,
      url TEXT,
      read_status INTEGER,

      CONSTRAINT url_unique
      UNIQUE (url),

      -- Creates foreign key constraint, set to delete row if primary key deleted
      CONSTRAINT fk_authors
      FOREIGN KEY (author_id)
      REFERENCES Authors(author_id)
      ON DELETE CASCADE,

      CONSTRAINT fk_publishers
      FOREIGN KEY (pub_id)
      REFERENCES Publishers(pub_id)
      ON DELETE CASCADE,

      CONSTRAINT fk_categories
      FOREIGN KEY (cat_id)
      REFERENCES Categories(cat_id)
      ON DELETE CASCADE
    );
  SQL
end

# Insert author name into Authors table.
def sql_insert_author
  <<-SQL
    INSERT INTO Authors (first_name, last_name)
    SELECT ?1, ?2
    WHERE NOT EXISTS ( SELECT first_name, last_name
                       FROM Authors
                       WHERE first_name = ?1
                       AND last_name = ?2);
  SQL
end

# Insert publisher name into Publishers table.
def sql_insert_publisher
  <<-SQL
    INSERT INTO Publishers (name)
    SELECT ?1
    WHERE NOT EXISTS ( SELECT name
                       FROM Publishers
                       WHERE name = ?1);
  SQL
end

# Insert topic into Categories table.
def sql_insert_category
  <<-SQL
    INSERT INTO Categories (topic)
    SELECT ?1
    WHERE NOT EXISTS ( SELECT topic
                       FROM Categories
                       WHERE topic = ?1);
  SQL
end

# Get an author's ID #.
def sql_get_author_id
  <<-SQL
    SELECT author_id
    FROM Authors
    WHERE first_name = ?
    AND last_name = ?
  SQL
end

# Get a publisher's ID #.
def sql_get_pub_id
  <<-SQL
    SELECT pub_id
    FROM Publishers
    WHERE name = ?
  SQL
end

# Get a topic's ID #.
def sql_get_cat_id
  <<-SQL
    SELECT cat_id
    FROM Categories
    WHERE topic = ?
  SQL
end

# Insert article info into Articles table.
def sql_insert_article
  <<-SQL
    INSERT INTO Articles (title, author_id, pub_id, cat_id, 
                          article_date, url, read_status)
    VALUES (?, ?, ?, ?, ?, ?, ?); 
  SQL
end

# Delete author.
def sql_delete_author
  <<-SQL
    DELETE FROM Authors
    WHERE first_name = ?
    AND last_name = ?
  SQL
end

# Delete publisher.
def sql_delete_publisher
  <<-SQL
    DELETE FROM Publishers
    WHERE name = ?
  SQL
end

# Delete topic.
def sql_delete_category
  <<-SQL
    DELETE FROM Categories
    WHERE topic = ?
  SQL
end

# Delete article.
def sql_delete_article
  <<-SQL
    DELETE FROM Articles
    WHERE url = ?
  SQL
end

# SQL SNIPPETS for customised queries

# FROM SNIPPET: join all tables
def sql_from
  <<-SQL
    FROM Authors
    JOIN Publishers
    JOIN Categories
    JOIN Articles USING (author_id, pub_id, cat_id)
  SQL
end

# SELECT SNIPPET: articles in short format
def sql_get_articles
  <<-SQL
    SELECT title, Publishers.name, url
  SQL
end

# SELECT SNIPPET: articles in detailed format
def sql_get_articles_info
  <<-SQL
    SELECT article_id, title, first_name, last_name, Publishers.name,
           topic, article_date, url, read_status
  SQL
end

# ORDER BY SNIPPET: author
def sql_order_by_author
  <<-SQL
    ORDER BY last_name, first_name
  SQL
end

# ORDER BY SNIPPET: publisher
def sql_order_by_pub
  <<-SQL
    ORDER BY Publishers.name
  SQL
end

# ORDER BY SNIPPET: category
def sql_order_by_cat
  <<-SQL
    ORDER BY topic
  SQL
end

# WHERE SNIPPET: filter by author
def sql_search_by_author
  <<-SQL
    WHERE first_name = ?
    AND last_name = ?
  SQL
end

# WHERE SNIPPET: filer by publisher
def sql_search_by_pub
  <<-SQL
    WHERE name = ?
  SQL
end

# WHERE SNIPPET: filer by category
def sql_search_by_cat
  <<-SQL
    WHERE topic = ?
  SQL
end

# WHERE SNIPPET: filer by read status
def sql_read_status
  <<-SQL
    WHERE read_status = ?
  SQL
end
