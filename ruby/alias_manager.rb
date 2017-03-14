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

p vowelConverter('a') # 'e'
p vowelConverter('i') # 'o'
p vowelConverter('u') # 'a'

# CONSONANT CONVERTER METHOD

def consonantConverter(c)
    # logic used to create consonants
    # consonants = ('a'..'z').to_a.join('').delete('aeiou')
    consonant = "bcdfghjklmnpqrstvwxyz"

    if c == consonant[-1]
        consonant[0]
    # else    
    #     v_index = vowels.index(v)
    #     vowels[v_index + 1] 
    end
end

p consonantConverter('z')
