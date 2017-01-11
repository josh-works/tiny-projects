def doubler(start)
  puts start
  puts "this is not recursion"
  if start < 10
    doubler(start * 2)
    puts "this is recursion"
  end
end
