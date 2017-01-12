puts "What's the beginnig year to evaluate? > "
year1 = gets.chomp.to_i
puts "What's the end year to evaluate? > "
year2 = gets.chomp.to_i

leap_years = []
years = (year1..year2).to_a
years.map do |year|
  if (year % 4 == 0 && ( year % 100 != 0 )) || year % 400 == 0
    leap_years << year
  end
end

puts "OK, here's the leap years:"
puts leap_years
