require 'pry'
array = []
puts "what would you like to add to the array?"
input = gets.chomp
ordered_chars = ('a'..'z').to_a + (0..9).to_a

while input != ""
  array << input
  puts "add something else: "
  input = gets.chomp
end

ordered_list = []

sorted = array.map do |word|
  ordered_list << ordered_chars.find_index(word.downcase.split('').first)
  binding.pry
end

p sorted
