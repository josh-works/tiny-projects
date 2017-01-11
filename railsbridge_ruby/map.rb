a = ["josh", "james", "cat", "kristi", "alex", "pauline", "jolene"]

a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
