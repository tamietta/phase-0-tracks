# Create method taking full name as argument.

# Swap first and last name.

# Change all vowels to next vowel in sequence, "aeiou".

# Change all consonants to next consonant in the alphabet.


# VOWEL CONVERTER METHOD

def vowelConverter(v)
  vowels = "aeiou"
  if v == vowels[-1]
    vowels[0]
  else    
    v_index = vowels.index(v)
    vowels[v_index + 1]
  end
end

# TEST CODE
# p vowelConverter('a') # 'e'
# p vowelConverter('i') # 'o'
# p vowelConverter('u') # 'a'

# CONSONANT CONVERTER METHOD

def consonantConverter(c)
  # logic used to create consonants
  # consonants = ('a'..'z').to_a.join('').delete('aeiou')
  consonants = "bcdfghjklmnpqrstvwxyz"

  if c == consonants[-1]
    consonants[0]
  else    
    c_index = consonants.index(c)
    consonants[c_index + 1] 
  end
end

# TEST CODE (uncomment to test)
# p consonantConverter('b') # 'c'
# p consonantConverter('z') # 'b'
# p consonantConverter('p') # 'q'

# ALIAS MANAGER METHOD

def aliasManager(fullname)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  fullname = fullname.downcase

  space_index = nil
  fullname.length.times do |idx|
    if vowels.include? fullname[idx]
      fullname[idx] = vowelConverter(fullname[idx])
    elsif consonants.include? fullname[idx]
      fullname[idx] = consonantConverter(fullname[idx])
    elsif fullname[idx] == " "
      space_index = idx
    end
  end

  fullname[0] = fullname[0].capitalize
  fullname[space_index + 1] = fullname[space_index + 1].capitalize

  fullname[(space_index + 1)..-1] \
    + fullname[space_index] + fullname[0...space_index]
end

# TEST CODE (uncomment to test)
# p aliasManager("u z") # 'A B'
# p aliasManager("Felicia Torres") # "Vussit Gimodoe"

# ** USER INTERFACE **

# Get user input for name.

# Return alias name.

# Repeat until user inputs 'quit'.

# Store names and aliases, and print out at the end of the program.

alias_data = {
  fullnames: [],
  aliases: []
}

while true
  puts "Please enter a name to be aliased."
  fullname = gets.chomp

  if fullname.downcase == "quit"
    break(puts "You have quit the program.")
  else
    aliased = aliasManager(fullname)
    alias_data[:fullnames] << fullname
    alias_data[:aliases] << aliased

    puts "Your new alias is: #{aliased}"
  end
end

alias_data[:fullnames].length.times do |idx|
  puts "#{alias_data[:fullnames][idx]} uses the alias, " \
    "'#{alias_data[:aliases][idx]}'."
end