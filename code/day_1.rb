# Write code to answer each of the following questions. Show the code and, in a comment, its return value.
# Example:
# How many letters are in the word 'abbreviation'?
'abbreviation'.length #=> 12

# Is pi bigger than 22/7?
Math::PI > 22/7 #=> True

# a person who's 6'5" is how many inches tall?
(12 * 6) + 5 #=> 77

weather = "an absolutely beautiful day"
# write the shortest possible code that will print out the string "Hello! Isn't it an absolutely beautiful day today?"
"Hello! isn't it #{weather} today?" #=> "Hello! isn't it an absolutely beautiful day today?"

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
"3 + 2 is #{3+2}" #=> "3 + 2 is 5"

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 4 ? 'greater' : 'less'} than four." #=> "Five is greater than four."
#

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 6 ? 'greater' : 'less'} than six." #=> "Five is less than six."
#

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code what it does.
"Five is #{5 == 100 ? '' : 'not '}the same as one hundred." #=> "Five is not the same as one hundred."
#

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
[ 1, 2, 3, 4, 5].collect do |n| 
  n * 3
end #=> [3, 6, 9, 12, 15]
#

# beginning with a list of the numbers 3, -2, 7.5, and 90, make a list containing their absolute values.
[3, 2, 7.5, 90].map { |i| i.abs}

# Add a comment after the following code block showing its return value.
# Then add a second comment explaining in English what the code does.
[ 'David Rogers', 'Brian Gates', 'Jerry Seinfeld', 'Larry David' ].select do |name|
  name.include?('David')
end #=> ["David Rogers", "Larry David"]


# create a list of the names Joe, Kelly, Spencer, Peter, Ivan, Andell, Angela, Jeff to use for the next five tasks.
=> ["Joe", "Kelly", "Spencer", "Peter", "Ivan", "Andell", "Angela", "Jeff"]

# access the 5th name in the list
class_room[5] #=> "Andell"

# add my name to the end of the list
class_room.push("Brian") #=> ["Joe", "Kelly", "Spencer", "Peter", "Ivan", "Andell", "Angela", "Jeff", "Brian"]

# make a list of the names in alphabetical order
class_room.sort #=> ["Andell", "Angela", "Brian", "Ivan", "Jeff", "Joe", "Kelly", "Peter", "Spencer"]

# make a list of the names in reverse alphabetical order
class_room.sort.reverse #=> ["Spencer", "Peter", "Kelly", "Joe", "Jeff", "Ivan", "Brian", "Angela", "Andell"]

# make a list of the names from shortest to longest
class_room.sort_by! { |i| i.length } #=> ["Joe", "Jeff", "Ivan", "Peter", "Kelly", "Brian", "Andell", "Angela", "Spencer"]

# Add a comment after the following line of code showing its return value.
# Then add a second comment explaining in English what the code does.  
%w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name.length == 5 }
=> [["Kelly", "Peter", "Brian"], ["Joe", "Spencer", "Ivan", "Andell", "Angela", "Jeff"]]


# Split the above list of names into a group that starts with 'J' and a group that doesn't.
class_room.partition { |j| j.include?('J') } #=> [["Joe", "Jeff"], ["Ivan", "Peter", "Kelly", "Brian", "Andell", "Angela", "Spencer"]]

president_birthdays = { 
    'Abraham Lincoln' => 'February 12, 1809', 
    'William Henry Harrison' => 'February 9, 1773', 
    'George Washington' => 'February 22, 1732', 
    'Ronald Reagan' => 'February 6, 1911' 
  }
# write code to access George Washington's birthday from the hash.
president_birthdays["George Washington"] #=> "February 22, 1732"

# Add a comment after the following block of code showing its return value.
# Then add another comment explaining in English what the code does. 
president_birthdays.each do |key, value|
  puts "President #{key} was born on #{value}."
end #=> {"Abraham Lincoln"=>"February 12, 1809", "William Henry Harrison"=>"February 9, 1773", "George Washington"=>"February 22, 1732", "Ronald Reagan"=>"February 6, 1911"}

# Imagine you were talking to someone who missed today's class (and the prework). 
# Write down how you would explain how to go about solving the next task. Then write code to solve it.
# Modify the code to print out only the Presidents born during the 18th century.

# All of the presidents and their birthdays are saved into a hash called president_birthdays.
# In order to list only the presidents with birthdays in the 18th century you first view the hash.
# Hashes are made up of keys and values. The key is the president's name, and the value is the 
# president's birthday. If the president's birthday is in the 18th century then you need a way to 
# target the specific numbers their birthdays must have in common, which is 17. First I call the 
# array, then I use the select method to select something specific in the hash (which in this case 
# will be the string 17). Afterwards I must write some code within an opening and closing curly bracket.
# Within those curly brackets I need to indecate the key and the value within two pipes, so i set a variable
# for key and another for value. Now the value is the only thing needed in order to select the specific value
# so after the two pipes with my variables, I call my variables which represents the value and call the include 
# method (with a question mark, because the question mark is what looks for the parameter I need to pass in)
# now after my include method I pass in what I want to look for which would be "17" (as a string), and Ruby 
# will give me any value that has 17 within it's value

president_birthdays.select { |a,b| b.include? ('17') } #=> {"William Henry Harrison"=>"February 9, 1773", "George Washington"=>"February 22, 1732"}

# Modify the code to print out only the President born during the 20th century.
president_birthdays.select { |a,b| b.include? ('19') } #=> {"Ronald Reagan"=>"February 6, 1911"}

# Add James A. Garfield (born November 19, 1831) to the hash, and modify the code (if necessary) to print out only the President born during the 20th century.
president_birthdays["James A. Garfield"] = "November 19, 1831" 
president_birthdays.select { |a,b| b.include? ('1911') } #=> {"Ronald Reagan"=>"February 6, 1911"}

# Also add Bill Clinton (born August 19, 1946), and modify the code (if necessary) to print out the two Presidents born during the 20th century. 
president_birthdays.select { |a,b| b.include? ('6') } #=> {"Ronald Reagan"=>"February 6, 1911", "Bill Clinton"=>"August 19, 1946"}

# EXPERT LEVEL: modify the code to print out the Presidents in the order of their birth.


# SUPER EXPERT LEVEL: Modify the code to print out the Presidents with February birthdays in the order their birthdays occur during the month.


# SUPER DUPER EXPERT LEVEL: Print out the six Presidents in the order their birthdays occur during the year.


# Create a data structure that has the numbers from one to ten that matches the
# representation of each as a word (like 'one') with the corresponding
# representation as a numeral (like 1).
numbers = {
	1 => "one",
	2 => "two", 
	3 => "three", 
	4 => "four", 
	5 => "five", 
	6 => "six", 
	7 => "seven", 
	8 => "eight", 
	9 => "nine", 
	10 => "ten"
} 

# If you print out the names of the numbers from one to three in alphabetical order
# alongside the numeral for each, it could look like
# one (1)
# three (3)
# two (2)
# Create the same kind of print out for the numbers from one to ten.
numbers.sort_by { |a,b| b } #=> [[8, "eight"], [5, "five"], [4, "four"], [9, "nine"], [1, "one"], [7, "seven"], [6, "six"], [10, "ten"], [3, "three"], [2, "two"]]

n = 3; puts "I have #{n} pizza#{n = 1 ? '' : 's'}"
# What is the typo in the above line, and why does it have the effect that it does?

# Fix the typo in the above line of code.


