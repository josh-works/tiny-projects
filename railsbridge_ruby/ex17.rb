hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}


if hash1 == hash2
  puts "they match"
else
  puts "nope"
end
