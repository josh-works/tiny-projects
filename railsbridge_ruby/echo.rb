# Write a program that plays back the message a user supplied.

puts "I'm a program to play back a message you give me, but I'm going to yell it. When ready, type \"ready\". "

ready = gets.chomp.downcase
if ready != "ready"
    puts "oh, you're not ready yet. Come back later"

else print "what's your message? > "
message = gets.chomp

puts "ok, here it is: \"#{message.upcase}\""

end


