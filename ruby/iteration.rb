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

puts "Before Array\#each method: #{fruits}"

fruits.each {|fruit| fruit.upcase}

puts "Before Array\#each method: #{fruits}"

