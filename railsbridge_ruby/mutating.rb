# mutating.rb, example of method modigying arg permanently

a = [1, 2, 3]

def mutate(array)
  array.pop
end


p "Before muatate method: #{a}"
p mutate(a)
p "after mutate method: #{a}"
