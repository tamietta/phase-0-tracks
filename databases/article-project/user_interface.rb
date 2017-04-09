require_relative "article.rb"
puts "Welcome to your articles database!\n\n"

puts "To connect to an existing database, type '1'"
puts "To create a new database, type '2'."

int = gets.chomp.to_i
 
print "Please type a database name (e.g. my_articles): "

db_name = gets.strip

int = 1 ? db = connect_database(db_name) : db = init_database(db_name)

puts "You are connected to your database."

while true

  puts "To insert a new article, type 'insert'."
  puts "To retrieve articles, type 'get'."
  puts "To delete articles, type 'delete'."
  puts "To exit the program, type 'exit'."

  action = gets.chomp

  case action
  when 'insert'
    
    puts "Article Title: "
    title = gets.chomp
    
    print "URL: "
    url = gets.chomp
    
    print "Author Name (leave blank to skip): "
    first_name, last_name = gets.chomp.split
    
    puts "Publication e.g. 'The Economist' (leave blank to skip): "
    publisher = gets.chomp
    publisher = nil if publisher.empty?
    
    print "Category e.g. 'Politics' (leave blank to skip): "
    category = gets.chomp
    category = nil if category.empty?
    
    print "Article Date e.g. 'YYYY-MM-DD' (leave blank to skip): "
    date = gets.chomp
    date = nil if date.empty?

    print "Type 'archive' to archive, or leave blank to mark as unread: "
    read_status = gets.chomp
    read_status.empty? ? read_status = 0 : read_status = 1

    insert_article(db, title, url, first_name, last_name, publisher, category,
                   date, read_status)

    puts "Your article has been inserted."
    redo

  when 'get'

    puts "To get "

    puts "Type 'all' to get all articles."
    puts "Type 'order' to get all articles ordered."
    puts "Type 'filter' to filter articles by a criteria."

    get_action = gets.chomp


    case get_action
    when 'all'

    end

  end

end
