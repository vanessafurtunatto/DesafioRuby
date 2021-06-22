#Missão 1

def potencializar(base, expoente)
 base ** expoente
end
 
print 'Digite a base desejada: '
base = gets.chomp.to_i
 
print 'Digite o expoente desejado: '
expoente = gets.chomp.to_i
 
potencia = potencializar(base, expoente)
 
puts "O número #{base} elevado a #{expoente} é #{potencia}"


#Missão 2

gem install cpf_cnpj


#Programa

require "cpf_cnpj"

print 'Digite seu cpf: '
cpf_number = gets.chomp.to_i
 
result = teste_cpf(cpf_number)
 
def teste_cpf(cpf_number)
 if CPF.valid?(cpf_number)
   return "Cpf valido"
 else
   return "Cpf invalido"
 end
end
 
 
puts result
