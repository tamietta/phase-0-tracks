puts "Please enter the total number of employees to be processed."
total = gets.chomp.to_i

total.times do

    puts "Please enter your name."
    name = gets.chomp.capitalize

    puts "Please enter your age."
    age = gets.chomp.to_i

    puts "Please enter your year of birth."
    birth_year = gets.chomp.to_i

    correct_age = (2017 == (birth_year + age))

    puts "Would you like our cafeteria's complimentary garlic bread? Please enter 'Y' for yes, and 'N' for no."
    likes_garlic = (gets.chomp.upcase == "Y" ? true : false)

    puts "Would you like to enroll in the company's health insurance plan? Please enter 'Y' for yes, and 'N' for no."
    wants_health_insurance = (gets.chomp.upcase == "Y" ? true : false)

    puts "Please enter an existing allergy one at a time. If at any point, you no longer have any remaining allergies, please enter 'Done'."

    n = 1
    sunshine_allergy = false
    begin
        puts "Allergy #{n}: "
        user_input = gets.chomp.capitalize
        if user_input == "Sunshine"
            sunshine_allergy = true
        end
        n += 1
    end until user_input == "Done"

    if sunshine_allergy
        result = "Probably a vampire."
    else
        if  correct_age && likes_garlic || wants_health_insurance
            result = "Probably not a vampire."
        end
        if !correct_age && !likes_garlic || !wants_health_insurance
            result = "Probably a vampire."
        end
    end

    if !correct_age && !likes_garlic && !wants_health_insurance
        result = "Almost certainly a vampire."
    end
    if name == "Drake Cula" || name == "Tu Fang"
        result = "Definitely a vampire."
    end   

    puts result

end

# NEED TO CHECK VARIABLES

puts "Actually, never mind! What do these questions have to do with anything Let's all be friends."