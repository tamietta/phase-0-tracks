class Puppy

  def initialize
    p "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof! " * int
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(int)
    int * 7
  end

  def jump_dog(int)
    puts "This dog can jump up to #{int} feet!"
  end
end

puppy = Puppy.new

puppy.fetch("ball")

puppy.speak(3)

puppy.roll_over

puts puppy.dog_years(2)

puppy.jump_dog(8)

class Car

  def initialize
    puts "Initializing new car instance ..."
  end

  def speed(int)
    p "The maximum speed of this car is #{int} miles per hour."
  end

  def brand(name)
    p "This car is a #{type}."
  end

end

car = Car.new

car.speed(150)

car.type("Bugatti")

cars = []

50.times { cars << Car.new }

cars.each do |car|
  car.speed(150)
  car.branc("Bugatti")
end
