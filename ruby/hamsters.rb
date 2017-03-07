puts "What is your hamsters name?"
name = gets.chomp
puts "What is your hamsters volume level (1-10)?"
volume = gets.chomp.to_f
puts "What is your hamsters fur color?"
fur_color = gets.chomp
puts "is your hamster a good condidate for adoption? If yes, enter 'Y'; if no, enter 'N'."
adoption_condition = gets.chomp
if adoption_condition == 'Y'
    adoption_condition = true
else
    adoption_condition = false
end
    
puts "What is your hamsters estimated age? (feel free to leave blank)"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_f
end

puts "Hamster's Name: #{name}"
puts "Volume: #{volume}" 
puts "Fur Color: #{fur_color}"
puts "Adoption Condition: #{adoption_condition}" 
if age == nil
    puts "Age: no response"
else
    puts "Age: #{age}"
end
