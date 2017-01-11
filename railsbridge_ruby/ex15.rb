arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

result = arr.delete_if do |i|
  i.start_with?('s', 'w')
end

p result
