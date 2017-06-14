# Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#   Split the string by spaces and assign it to a variable
#   Iterate through the array, set each item as the key of a hash,
#   then set default quantity of hash value at 1
#   print the list to the console [can you use one of your other methods here?]
# output: A hash with the items as keys and quantities of each item as the value

def create_list(items)
  groceries = {}
  items.split(" ").each { |item| groceries[item] = 1 }
  print_list(groceries)
  groceries
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
#   Set item name as list hash key and optional quantity as list hash value
# output: List hash with the new item

def add_item(list, item, optional_quantity = 1)
  list[item] = optional_quantity
end

# Method to remove an item from the list
# input: list, item name
# steps:
#   Remove the key value pair from list hash
# output: List hash with item removed

def remove_item(list, item)
  puts "This item does not exist in your list" if !list.include?(item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
#   Update the quantity of the item in the list hash
# output: List hash with updated item quantity

def update_quantity(list, item, new_quantity)
  if list.include?(item)
    list[item] = new_quantity
  else
    puts "#{item} does not exist, did you mean to add it?"
  end
  list
end

# Method to print a list and make it look pretty
# input: list
# steps:
#   First print an intro
#   Print every key value pair from the list hash
# output: N/A

def print_list(list)
  puts "Here is your grocery list:"
  list.each { |item, quantity| puts "#{item} : #{quantity}" }
end

# Driver code:
groceries = create_list("Apples Oranges Pears Tomatoes")
add_item(groceries, "Lemonade", 2)
add_item(groceries, "Tomatoes", 3)
add_item(groceries, "Onions", 1)
add_item(groceries, "Ice Cream", 4)
add_item(groceries, "Pizza")
p groceries
remove_item(groceries, "Lemonade")
remove_item(groceries, "Papaya")
p groceries
update_quantity(groceries, "Ice Cream", 1)
update_quantity(groceries, "Figs", 3)
p groceries
print_list(groceries)

# What did you learn about pseudocode from working on this challenge?
# Writing good pseudocode in the beginning makes it really easy to write the actual code

# What are the tradeoffs of using arrays and hashes for this challenge?
# Hashes make it easier since you can have more information but with less code

# What does a method return?
# A method returns whatever code is passed inside the method. Sometimes you'd have to return something at the end, otherwise it will return bits of code that may not be useful to somebody who uses the code later.

# What kind of things can you pass into methods as arguments?
# Strings, booleans, integers, nil

# How can you pass information between methods?
# You can use methods within a method, but you will need to make sure to define variables outside of the method, sometimes assigning return values of methods to a global variable so you can use it in other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I'm getting a better grasp of return values and the difference between return and p. Helin was very good at explaining it.