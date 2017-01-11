def has_a_b?(string)
  if /b/.match(string)
    puts "we've got a match"
  else
    puts "no match"
  end
end


has_a_b?("basketball")
has_a_b?("booobies")
has_a_b?("BooBies")
has_a_b?("dicks")
