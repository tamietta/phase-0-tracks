# Method to print a list and make it look pretty
def print_list(list)
# input: list
# steps:
 # iterate through the list and print out items and quantities
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
   # item: quantity
# output: printed list in a nice format
end


# Method to create a list
# input: string of items separated by spaces (example: “carrots apples cereal pizza”)
def create_list(str)
  grocery_list = {}
# steps:
 # split input into array
 str_array = str.split
 # iterate array and add each item to hash
 str_array.each { |item| grocery_list[item] = 1 }
 # set default quantity
 # print the list using print method and passing in hash
 # print_list(grocery_list)
# output: return the created hash
 grocery_list
end

# puts create_list("apples pears cherries")

# Method to add an item to a list
def add_item(list, item_name, quantity=1)
# input: list, item name, and optional quantity
# steps:
 # check IF item is included in list
  if list.include? item_name
   # increment item by quantity
    list[item_name] += quantity
   # ELSE - set item as new key and assign it to quantity as value
  else
    list[item_name] = quantity
  end
# output: return the updated hash
  puts "Here is your updated list:"
  p list
end

test_list = create_list("apples pears cherries")
# add_item(test_list, "peaches", 3)
# test_list

# Method to remove an item from the list
def remove_item(list, item_name)
# input: list, item name
# steps:
 # check IF item is included in list
  if list.include? item_name
   # delete the item
    list.delete(item_name)
   # ELSE, print a message to the user
  else
    puts "No #{item_name} on the list."
  end
# output: return updated hash or the original hash
  list
end

# puts remove_item(test_list, "cars")

# Method to update the quantity of an item
def update_quantity(list, item_name, quantity)
# input: list, item name, new quantity
# steps:
 # check IF item is included in list
 if list.include? item_name
   # update the item’s quantity
   list[item_name] = quantity
   # ELSE, print a message to the user
  else
    puts "No #{item_name} on the list."
  end
# output: return the updated hash or the original hash
  list
end

# puts update_quantity(test_list, "cars", 4)


print_list(test_list)