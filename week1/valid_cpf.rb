require 'cpf_cnpj'

puts "Type 1 if you'll type a CPF and type 2 if you'll type a CNPJ."

choice = gets.chomp.to_i

if choice == 1
  puts "Type the chosen option."
  cpf_str = gets.chomp

    if CPF.valid?(cpf_str, strict: true)
      puts "It's a valid CPF."
    else 
      puts "It's not a valid CPF number."
    end
    
elsif choice == 2
  puts "Type the chosen option."
  cnpj_str = gets.chomp

  if CNPJ.valid?(cnpj_str, strict: true) 
    puts "It's a valid CNPJ."
  else 
    puts "It's not a valid CNPJ number."
  end

else 
  puts "Invalid choice."

end
