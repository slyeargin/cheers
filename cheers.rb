# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.
#
# Note: the “a” vs. “an”

puts "What's your name?"
name = gets.chomp.upcase
if name.empty?
  puts "You must enter your name."
else
  name.each_char do |char|
    if char == "A" || char == "E" || char == "H" || char == "I" || char == "L" || char == "M" || char == "N" || char == "O" || char == "R" || char == "S" || char == "X"
      puts "Give me an … #{char.upcase}!"
    else
      puts "Give me a … #{char.upcase}!"
  end
end
puts "#{name}'s just GRAND!"
end
