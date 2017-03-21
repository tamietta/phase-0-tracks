# Method to print a list and make it look pretty
# input: list
# steps:
  # FOR each key-value pair in list
    # print in format: "item: quantity"
# output: hil

def print_list(list)
  puts "Your grocery list:"
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create list as empty hash.
  # split string into items, and store as elements in array.
  # FOR each item
    # set as hash key
    # assign default value of 1
  # print hash as list
# output: hash

def create_list(items)
  list - {}
  items.split.each { |item| list[item] = 1}
  print_list
  list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # IF item in list
    # increment original quantity with new quantity
  # ELSE
    # set item as hash key, and assign to quantity
# output: updated hash

def add_item(list, item, quantity=1)
  { list.include?(item) ? list[item] += quantity : list[item] = quantity }
  list
end

# Method to remove an item from the list
# input: list, item
# steps:
  # IF item in list
    # remove item from list
  # ELSE
    # print no item message
# output: updated or original list

def remove_item(list, item)
  # when can no brackets? what parsed without brackets
  list.include?(item) ? list.delete(item) : puts("No #{item} in the list.")
  list
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps:
  # IF item in list
    # set item key to new quantity
  # ELSE
    # print no item message
# output: updated or original list

def update_quantity(list, item, quantity)
  list.include?(item) ? list[item] = quantity : puts("No #{item} in the list.")
  list
end

# Test code for release 2
grocery_list = create_list(“”)
add_item(grocery_list, “lemonade”, 2)
add_item(grocery_list, “tomatoes”, 3)
add_item(grocery_list, “onions”, 1)
add_item(grocery_list, “ice cream”, 4)
print_list(grocery_list)
puts ‘-’ * 40
remove_item(grocery_list, “lemonade”)
print_list(grocery_list)
puts ‘-’ * 40
update_quantity(grocery_list, “ice cream”, 1)
print_list(grocery_list)