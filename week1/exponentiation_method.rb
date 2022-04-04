puts "Please, type the base and its power."

b = gets.chomp.to_f
e = gets.chomp.to_f

def expon(base, exponent)
  base ** exponent
end

result = expon(b, e)

puts "The value of the product is #{result.round(5)}."