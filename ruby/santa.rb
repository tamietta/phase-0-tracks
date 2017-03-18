# CLASS: SANTA

class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :age, :gender
  
  def initialize(gender, ethnicity)
    # puts "Initialising Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  # GETTER METHODS

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # SETTER METHODS

  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  
  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer))
  end

end

# TEST CODE

genders = ["male", "female", "androgynous", "gender questioning", "trans female", "trans male", "transsexual", "non-binary", "pangender"]
ethnicities = ["Hispanic", "Asian", "Black", "White", "Middle-Eastern"]

santas = []
s = nil
1000.times do
  s = Santa.new(genders.sample, ethnicities.sample)
  s.age = rand(141)
  puts "Age: #{s.age} | Gender: #{s.gender} | Ethnicity: #{s.ethnicity}" 
  santas << s
end

puts santas.length == 1000

# Test methods for last santa
puts s.speak
puts s.eat_milk_and_cookies("chocolate chip cookies")
puts s.age
puts s.celebrate_birthday
p s.reindeer_ranking
p s.get_mad_at("Dancer")