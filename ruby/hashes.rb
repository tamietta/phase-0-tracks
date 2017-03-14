# INFO HASH

# Create a hash to store user info.
# Values must include mix of strings, integers, and booleans.

user_info = {name: nil, age: nil,  siblings: nil}


# USER INTERFACE

# Ask user for input for each hash key.
# Convert input to correct data type.

puts "Please enter your full name."
user_info[:name] = gets.chomp

puts "Please enter your age."
user_info[:age] = gets.chomp.to_i

puts "Do you have any siblings? Please enter 'Y' for yes, or 'N' for no."
user_info[:siblings] = case gets.chomp.upcase.to_sym
when :Y then true
when :N then false
end

# Print hash to screen for verification.
p user_info

# Allow one key-value update from user. If no update, write "none".
puts "To update a field, please enter the field's name, or 'none' to skip this step."
puts "e.g. Enter 'name' to update your name."
key = gets.chomp.to_sym

puts "Please enter your new value."
value = gets.chomp 

user_info[key] = case key
when :name then value
when :age then value.to_i
when :siblings
    case value.upcase.to_sym
    when :Y then true
    when :N then false
    end
end

# Print updated hash.
p user_info
