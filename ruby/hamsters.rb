puts "Please enter the hamster's name."
name = gets.chomp.capitalize

puts "Please rate the #{name}'s noise level on a scale of 1 to 10."
volume = gets.chomp.to_i

puts "Please enter #{name}'s fur colour."
colour = gets.chomp.capitalize

puts "Is #{name} suitable for adoption. Enter 'Y' for yes, and 'N' for no."
adoption = gets.chomp.upcase
if adoption == 'Y'
    adoption = true
elsif adoption == 'N'
    adoption = false
end

puts "Please enter #{name}'s estimated age in years. Leave blank if unsure."
age = gets.chomp.to_f
if age == 0.0
    age = nil
end

puts "Here a summary of the data enteredd for #{name}."
puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Colour: #{colour}"
puts "Adoption Suitability: #{adoption ? 'Yes' : 'No'}"
puts "Estimated Age (Years): #{age.nil? ? 'No Estimate' : age}"