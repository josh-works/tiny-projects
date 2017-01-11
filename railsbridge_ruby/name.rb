# name.rb

def greeting(name="human")
  puts name.class
  return "hi there, #{name.to_s.reverse}"
end
