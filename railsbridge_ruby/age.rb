# original, inelegent solution
# puts "what's your age? > "
#
# age = gets.to_i
# years_10 = age + 10
# years_20 = age + 20
# years_30 = age + 30
# years_40 = age + 40
#
#
# puts "your age is #{age}"
#
# puts "your age in 10 years will be #{years_10}"
# puts "your age in 20 years will be #{years_20}"
# puts "your age in 30 years will be #{years_30}"
# puts "your age in 40 years will be #{years_40}"


puts "how old are you? > "
age = gets.to_i
starting_age = age
repeat = 0
decade = 10

while repeat < 11
  puts "you are #{starting_age}. in #{decade} years you'll be #{age + decade}."
  age += 10
  decade += 10
  repeat += 1
end
