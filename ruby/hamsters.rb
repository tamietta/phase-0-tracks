puts "What is your hampsters name?"
name = gets.chomp
puts "What is your hampsters volume level (1-10)?"
volume = gets.chomp
puts "What is your hampsters fur color?"
fur_color = gets.chomp
puts "is your hamster a good condidate for adoption?"
adoption_condition = gets.chomp
puts "What is your hampsters estimated age? (feel free to leave blank)"
age = gets.chomp
if age == ""
	age = nil
else
	age = age
end
p name
p volume
p fur_color
p adoption_condition
p age
