def test_for_string(string)
  if /lab/.match(string)
    puts "lab is found in #{string}"
  else
    puts "not found"
  end
end

test_for_string("polar bear")
test_for_string("elaborate")
test_for_string("Pans Labyrinth")
test_for_string("laboratory")
test_for_string("test_for_string")
