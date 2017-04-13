# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

# EXPLANATION: when server gets request for '/' (home directory), 
#               respond with ... (string/HTML)
# PARAMS: query parameters are stored as a hash variable, 'params'
# QUERY PARAMETER SYNTAX: ?key=value&key=value&... 

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters

# EXPLANATION: when server gets request for '/about/:person', (e.g. '/about/Helen')
#              respond with ... (string/HTML)
# PARAMS: route parameters are stored as a hash variable, 'params'
# ROUTE PARAMETER: parameters are built into the URL

get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# URL: '/Helen/loves/Ezzeri'

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
# GET /

# EXPLANATION: when server gets request for '/students', 
#               respond with ... (string/HTML)

get '/students' do
  age = params[:age]
  if age
    students = db.execute("SELECT * FROM students WHERE age = ?", age)
  else
    students = db.execute("SELECT * FROM students")
  end
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

# EXPLANATION: when server gets request for '/students/:id' (e.g. 'students/5', 
#               respond with ... (string/HTML)

get '/students/id/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# GET /contact
get '/contact' do
  "12 Bishop's Close<br>London<br>NW3 4HR<br>"
end

# GET /great_job
get '/great_job' do
  name = params[:name]
  name ? "Good job, #{name}!" : "Good job!"
end

# GET /:int1/:int2
get '/:int1/add/:int2' do
  int1, int2 = params[:int1].to_i, params[:int2].to_i
  "#{int1} + #{int2} = #{(int1 + int2)}"
end

# METHOD: pretty-print student
def print_db(students)
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# GET '/students/campus/:campus'
get '/students/campus/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus = ?", params[:campus])
  print_db(students)
end

