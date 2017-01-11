total = 0
user_input = nil
while user_input != 'stop'
    print 'Enter a number to add to the total. > '
    user_input = gets.chomp
    total = total + user_input.to_i
end
puts "Your final total was #{total}!"