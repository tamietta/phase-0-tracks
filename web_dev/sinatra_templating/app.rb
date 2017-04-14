# require gems
require 'sinatra'
require 'sqlite3'

# Add static resources (CSS and JS files), by setting default folder.
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# Display home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

# Display new student form page
get '/students/new' do
  erb :new_student
end

# Create new students via form
post '/students' do
  db.execute(
    "INSERT INTO students (name, campus, age) VALUES (?,?,?)", 
    [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# Display campus form page
get '/students/campus_form' do
  erb :campus_form
end

# Display campus results page
post '/students/campus' do
  # Set SQL result-set as array only within the scope of method.
  db.results_as_hash = false
  @cols, *@rows = db.execute2(
    "SELECT * FROM students WHERE campus = ?", params[:campus])
  erb :campus
end

# Verify result-set as hash in global scope
p db.execute("SELECT * FROM students WHERE id = 1")

