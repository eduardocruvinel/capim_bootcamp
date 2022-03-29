numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

largest_value = numbers.values.max
key_largest = numbers.key(largest_value)

puts "The largest value in the hash is #{largest_value} it's #{key_largest}'s." 
