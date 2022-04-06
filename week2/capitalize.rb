# Crie uma lambda que recebe um nome como parametro e o imprime
# com a primeira letra maiuscula. Esta lambda devera ser salvo dentro
# de uma variavel que sera passada como argumento de um metodo chamado
# capitalize_name.
#
# Dentro deste metodo voce chamara a lambda duas vezes, passando como
# parametro em cada uma delas um nome diferente.

capitalize_lambda = -> (name){ puts name.capitalize()}

def capitalize_name(capitalize_lambda)
  capitalize_lambda.call("Joao")
  capitalize_lambda.call("Maria")
end

capitalize_name(capitalize_lambda)