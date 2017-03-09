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
    puts str
end

puts "Please enter a string."
str = gets.chomp
encrypt(str)

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
# if space, no change
    puts str
end

puts "Please enter a string."
str_2 = gets.chomp
decrypt(str_2)