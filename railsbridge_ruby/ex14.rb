contact_info = ['josh@gmail.com', 'Golden, CO', '555-483-5555', 'Climbing', 'kristi@gmail.com', 'anywhere, NJ', '5555555555', 'Dog Sitting']
person_profile = {'Josh Thompson' => {}, 'Kristi Thompson' => {} }
data = [:email, :city, :phone, :favorite_hobby]


person_profile.each do |name,hash|
  data.each do |field|
    hash[field] = contact_info.shift
  end
end

puts contact_info
puts person_profile["Josh Thompson"]
puts person_profile["Kristi Thompson"]
