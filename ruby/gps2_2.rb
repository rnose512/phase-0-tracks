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
  items.split(" ").each do |item|
    groceries[item] = 1
  end
  print_list(groceries)
  groceries
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
#   Set item name as list hash key and optional quantity as list hash value
# output: List hash with the new item

def add_item(list, item, optional_quantity)
  list[item] = optional_quantity
end

# Method to remove an item from the list
# input: list, item name
# steps:
#   Remove the key value pair from list hash
# output: List hash with item removed

def remove_item(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
#   Update the quantity of the item in the list hash
# output: List hash with updated item quantity

def update_quantity(list, item, new_quantity)
  list[item] = new_quantity
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
  list.each do |item, quantity|
    puts "#{item} : #{quantity}"
  end
end

# Driver code:
groceries = create_list("Apples Oranges Pears Tomatoes")
add_item(groceries, "Cucumbers", 5)
p groceries
remove_item(groceries, "Oranges")
p groceries
update_quantity(groceries, "Apples", 10)
p groceries