print "What's the first number? > "

number1 = gets.to_i

print "What's the second number? > "

number2 = gets.to_i


print "Would you like to add, subtract, multiply, or divide these numbers? > "

operation = gets.chomp

if operation == "add"
    answer = number1 + number2
    puts "the answer is #{answer}!"


if operation == "subtract"
    answer = number1 - number2
    puts "the answer is #{answer}!"
end

if operation == "divide"
    answer = number1 / number2
    puts "the answer is #{answer}!"
end

if operation == "multiply"
    answer = number1 * number2
    puts "the answer is #{answer}!"
end

else 
    puts "i didn't understand your answer"
end