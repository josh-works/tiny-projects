a = ['a', 'b', 'c', 'd']

def test(b)
  b.map {|letter| "I like the letter: #{letter}" }
end


test(a)
