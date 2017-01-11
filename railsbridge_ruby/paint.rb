total = 99
colors = ['red', 'blue', 'green']

colors.each do |color|
   puts "#{total} colors of paint on the wall..."
   puts "Take #{color} down, pass it around..."
   total = total - 1
   puts "#{total} colors of paint on the wall!"
   end