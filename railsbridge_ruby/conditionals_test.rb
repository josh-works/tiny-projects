print "How many apples do you have? > "
apple_count = gets.to_i
puts "You have #{apple_count} apples."

if apple_count > 5
    puts "Lots of apples!"
else
    puts 'Not too many apples'
end 
