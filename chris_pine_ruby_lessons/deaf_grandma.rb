puts "what do I want to tell Grandma? > "
phrase = gets.chomp
bye = 0


until bye == 3
  if phrase != phrase.upcase
    puts "WHAAAT? I CAN'T MAKE THAT OUT, YOU TURD!!! TYPE IT AGAIN!"
    puts "Please try again: > "
    bye = 0
    phrase = gets.chomp
  elsif phrase == "BYE!"
    bye +=1
    puts "WHAAAT? I CANNOT HEAR YOU!"
    phrase = gets.chomp
  else
    puts "NO, NOT SINCE \'#{rand(1922-1989)}!"
    puts "What else would you like to talk about? > "
    phrase = gets.chomp
    bye = 0
  end
end
