# Crie um modulo chamado Person com as classes Juridic e Physical
# Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add)
# Person::Physical.new('Jose Almeida', '425.123.123-123').add
# Retorna
#
# Pessoa Fisica Adicionada
# nome: Jose Almeida
# cpf: 425.123.123-123

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "Pessoa Juridica Adicionada"
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "Pessoa Fisica Adicionada"
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
print "\n"
Person::Physical.new('Jose Almeida', '425.123.123-123').add