=begin

module Shout
  def self.yell_angrily(words)
    words + "!!! " + ":("
  end

  def self.yelling_happily(words)
    words + "!!! " + ":)"
  end

end

# TEST CODE

p Shout.yell_angrily("This is so annoying")
p Shout.yelling_happily("I did")

=end

module Shout
  def yell_angrily(words)
    words + "!!! " + ":("
  end

  def yelling_happily(words)
    words + "!!! " + ":)"
  end
end

class Programmer
  include Shout
end

class Student
  include Shout
end

# TEST CODE

programmer = Programmer.new
puts programmer.yell_angrily("Why isn't this working")
puts programmer.yelling_happily("I solved it")

student = Student.new
puts student.yell_angrily("This is so complicated")
puts student.yelling_happily("This finally makes sense")

