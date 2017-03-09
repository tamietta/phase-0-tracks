# define encrypt method and declare parameter for string
def encrypt(str)
# loop through each character in string
    index = 0
    while index < str.length
    # if space, no change
        if str[index] != " "
    # advance each character one letter forward
            if str[index] == "z"
                str[index] = "a"
            else
                str[index] = str[index].next
            end
        end
        index += 1
    end
    return str
end

# puts "Please enter a string."
# str = gets.chomp
# puts encrypt(str)

# define decrypt method and declare parameter for string
def decrypt(str)
# define alphabet string
    alpha = "abcdefghijklmnopqrstuvwxyz"

# loop through each character in input string
    index = 0
    while index < str.length
        if str[index] != " "
            alpha_index = alpha.index(str[index])
            str[index] = alpha[alpha_index - 1]
        end  
# for each character, retrieve previous character in alphabet string (.index)
        index += 1
    end
    str
end

# puts "Please enter a string."
# str_2 = gets.chomp
# puts decrypt(str_2)

# puts "Nested method:"
# puts decrypt(encrypt("swordfish"))
=begin
    Return value of encrypt("swordfish") passed as argument to decrypt.
    Last line of methods must not be puts, otherwise return value will be nil.
=end

# Ask secret agent for password.
puts "Welcome to encrypt/decrypt program."
puts "Please enter your name: "
name = gets.chomp

puts "Please enter your password: "
password = gets.chomp

# Ask to encrypt or decrypt password.
puts "Please select a method: encrypt(1) or decrypt(2)"
password_method = gets.chomp.to_i
if password_method == 1
    result = encrypt(password)
elsif password_method == 2
    result = decrypt(password)
else
    puts "Input is not correct."
    exit
end
# Call relevant method.

# Print output to screen.
puts "Agent Name: #{name}"
puts "Agent's New Password: #{result}"
# Exit