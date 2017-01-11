
puts "pick a number > "
a = gets.to_i

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a isn't 5 or 6"
end

puts answer
