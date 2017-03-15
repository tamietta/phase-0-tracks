# A method which takes three arguments as input
def blockMethod(x, y, z)
  puts [x, y, z]
  puts "Before block"

  # Arguments passed to block via yield call
  block_value = yield(x, y, z)

  puts "After block"
  block_value
end

# Block declares parameters for arguments to be passed by blockMethod
blockMethod(10, 20, 30) { |a, b, c| puts "Block calculates the sum of the arguments: #{a} + #{b} + #{c} = #{a + b + c}"}

fruits = ["apple", "pear", "banana"]

shopping_list = {
  item: ["bread", "milk", "eggs"],
  price: [4.99, 3.5, 9],
  quantity: [1, 2, 12]
}

# Array#each
puts "Before Array\#each method: #{fruits}"

fruits.each {|fruit| p fruit.upcase}

puts "Before Array\#each method: #{fruits}"

#Hash#each
puts "Before Hash\#each method: #{shopping_list}"

shopping_list.each do |k, v|
  v.each do |item|
    if item.kind_of? Float
      puts "Key: #{k}"
      p item.to_i
    end
  end 
end

puts "Before Hash\#each method: #{shopping_list}"

# Array#map!
puts "Before Array\#map! method: #{fruits}"

fruits.map! {|fruit| p fruit.upcase}

puts "Before Array\#map! method: #{fruits}"

p arr = [1, 2, 3, 4]
p hsh = {
  one: 1,
  two: 2, 
  three: 3,
  four: 4
}

# Method: delete upon condition

# delete_if * modifies *
p arr.delete_if { |x| x % 2 == 0 }
p hsh.delete_if { |k, v| k.length < 4 }

p arr
p hsh


p arr = [1, 2, 3, 4]
p hsh = {
  one: 1,
  two: 2, 
  three: 3,
  four: 4
}

# Method 1: keep upon condition

# keep_if * modifies *
p arr.keep_if { |x| x % 2 == 0 }
p hsh.keep_if { |k, v| k.length < 4 }

p arr
p hsh

p arr = [1, 2, 3, 4]
p hsh = {
  one: 1,
  two: 2, 
  three: 3,
  four: 4
}

# Method 2: keep upon condition

p arr.select { |x| x % 2 == 0 }
p hsh.select { |k, v| k.length < 4 }

p arr
p hsh

# Method: deletes while condition true

p arr.drop_while { |x| x < 3 }

# calls Array#drop_while on k-v pair array: 
# Hash.each {|kv| kv}, where kv -> Array
p hsh.drop_while { |k, v| v < 4 }

p arr
p hsh