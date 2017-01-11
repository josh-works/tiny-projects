x = 0
while x <= 10
  if x == 3
    puts "equals 3"
    x += 1
    break
  elsif x.odd?
    puts "#{x}, i'm odd"
  end
  x += 1
end
