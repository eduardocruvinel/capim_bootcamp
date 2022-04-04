puts "Please, type three numbers."

n1 = gets.chomp.to_f
n2 = gets.chomp.to_f
n3 = gets.chomp.to_f

print "Your numbers raised to the second power are: "

arr = [n1, n2, n3].map! do |a| print "#{(a ** 2).round(5)} " end

puts arr

