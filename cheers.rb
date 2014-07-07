# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

# Hey, Abby, what’s your birthday?
# And, replying based on the output with a notification of how many days away their birthday is:
#
# Awesome!  Your birthday is in 45 days! Happy Birthday in advance!
require 'date'

puts "What's your name?"
name = gets.chomp.upcase
if name.empty?
  puts "You must enter your name."
else
  name.each_char do |char|
    if char == "A" || char == "E" || char == "H" || char == "I" || char == "L" || char == "M" || char == "N" || char == "O" || char == "R" || char == "S" || char == "X"
      puts "Give me an … #{char}!"
    else
      puts "Give me a … #{char}!"
  end
end
puts "#{name}'s just GRAND!"
puts "Hey, #{name}, what's your birthday?"
birthday = DateTime.parse(gets.chomp)
today = DateTime.now
if birthday < today
  birthday = birthday >> 12
end
countdown = (birthday - today).to_i
if countdown == 0
  puts "Happy Birthday!"
else
  puts "Awesome!  Your birthday is in #{countdown} days!  Happy birthday in advance!"
end
end
