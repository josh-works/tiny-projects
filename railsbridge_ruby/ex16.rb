a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

# one possible solution
# b = a.join(' ').split(' ')
# p b # => ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]


# # another possible solution
# b = a.map do |i|
#   i.split(' ')
# end
#
# b.flatten!
#
# p b # => ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]

# # a third option
# b = a.map { |i| i.split }
# b.flatten!
# p b
