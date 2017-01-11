array = [1, 3, 5, 7, 9, 11]
puts "what number should we check for? > "
number = gets.chomp.to_i

if array.include?(number)
  puts "#{number} exists in the array"
else
  puts "#{number} does not exist in the array"
end
