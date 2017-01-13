array = []
puts "what would you like to add to the array?"
input = gets.chomp

while input != ""
  array << input
  puts "add something else: "
  input = gets.chomp
end


p array.sort
