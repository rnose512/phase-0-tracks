# Release 0:
def greeting
  name = "John"
  puts "Hi!"
  yield (name)
end

greeting {|name| puts "How are you, #{name}?"}

# Release 1:
people = ["sarah", "Jeff", "mike", "rachael", "Gloria", "Pat"]

food = {
  tools: ["knife", "cutting board", "napkins", "plate", "pam"],
  ingredients: ["tomato", "lettuce", "bacon", "salt", "pepper", "cheese"]
}

p food
food.each {|x| p x}

p food[:tools]
food[:tools].map! do |x|
  puts x
  x.upcase
end
p food[:tools]

p people
people.map! do |y|
  puts y
  y.capitalize
end
p people

# Release 2:
numbers = [2, 8, 13, 22, 15, 16, 17]
# 1
numbers.each {|x| p numbers.delete(x) if x % 3 == 0}
p numbers

# 2
numbers.keep_if {|x| x < 5}
p numbers

# 3
numbers.select! {|x| x % 5 == 0}
p numbers

# 4
number = numbers.take_while {|x| x < 16}
p number

alphebet = {
  a: 1,
  b: 12,
  c: 6,
  d: 29,
  e: 71
}

#1
alphebet_del = alphebet.delete_if {|k, v| v.even?}
p alphebet_del

#2
alphebet_fil = alphebet.select {|k, v| k > :b}
p alphebet_fil

#3
alphebet_keep = alphebet.keep_if {|k, v| v % 6 == 0}
p alphebet_keep

# 4
alphebet_remove = alphebet.each {|k, v| alphebet.delete(k) if v < 20}
p alphebet_remove
