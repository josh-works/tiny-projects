require 'pry'
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
    binding.pry
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt
