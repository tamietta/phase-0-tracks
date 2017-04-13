# require gems
require 'sinatra'
require 'sqlite3'

# add static resources
# set default static folder for CSS and JS files.
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/campus_form' do
  erb :campus_form
end

post '/students/campus' do
  @campus = params[:campus]
  erb :campus
end

