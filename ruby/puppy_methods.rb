# CLASS: PUPPY

class Puppy

  def initialiszzzzze
    puts "Initialising new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    n.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over"
  end

  def dog_years(n)
    n * 7
  end

  def snuggle(name)
    puts "snuggles #{name}"
  end

end

# TEST CODE

# bubble = Puppy.new

# bubble.fetch("ball")
# bubble.speak(2)
# bubble.roll_over
# p bubble.dog_years(5)
# bubble.snuggle("you")


# CLASS: GARDEN

class Garden

  def initialize
    "Initialising a garden instance ... "
  end

  def plant(species)
    "The #{species.downcase} have been planted."
  end 

  def water(plant)
    "Thank you for watering the #{plant.downcase}."
  end
  
  def change_season(season)

    case season.downcase

    when "autumn"
      "Autumn has arrived. The leaves have turned red and brown."
    when "winter"
      "Winter has arrived. The lawn is carpeted in snow."
    when "spring"
      "Spring has arrived. Rain helps the spring shoots to grow."
    when "summer"
      "Summer has arrived. The garden is verdant and in full bloom."
    end

  end

end

# TEST CODE

# kew = Garden.new

# kew.plant("Tulips")
# kew.water("Tulips")
# kew.change_season("SUMMER")

gardens = []

50.times do
  gardens << Garden.new
end

gardens.each do |g|
  puts g.plant("Daffodil")
  puts g.water("Apple Tree")
  puts g.change_season("Spring")
end