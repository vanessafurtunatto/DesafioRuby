# Missão 1 
#Integer
tp_int = 2
tp_int.class

#Float
tp_float = 5.67
tp_float.class

#Boolean
tp_boolean_True = true
tp_boolean_False = false
tp_boolean_True.class
tp_boolean_False.class

#String
tp_string = ‘Vanessa’
tp_string.class

# Array
tp_array = [15, 0.78, 1012]
tp_array.class

tp_array_diverses = [15, 0.78, ‘Ruby’, true] # podemos instanciar vários tipos de dados em um array
tp_array_diverses.class

#Symbol
tp_symbol = :name_symbol
tp_symbol.class
tp_symbol.object_id # posição da memória que o símbolo está salvo

tp_symbol_01 = :name_symbol
tp_symbol_01.object_id # perceba que é a mesmo posição da memória o símbolo está salvo

#Hash
tp_hash = {Aluna: 'Vanessa', Aprendedo: 'ruby', ano: 2021}
tp_hash.class

#Tipagem Dinâmica
tp_dynamic = 1357
tp_dynamic.class

tp_dynamic = 4.521
tp_dynamic.class

tp_dynamic = ‘Teste’
tp_dynamic.class

tp_dynamic = :teste_simbol
tp_dynamic.class

# Missão 2

#Input nome
print “Digite seu nome:
nome = gets.chomp

#Input idade
print “Qual sua idade?
idade = gets.to_i


print 'Seu nome é #{name} e você tem #{age} anos.'

# Missão 3

# Input números inteiros
print “Primeiro número inteiro: ”
int1 = gets.chomp.to_i
#Segundo Input
print “Segundo número inteiro: ”
int2 = gets.chomp.to_i
#Concatenação
print “Você me passou os seguintes valores: int1= #{int1} | int2 = #{int2}”

print “Operações matemáticas:”
puts “Soma: #{int1 + int2}”
puts “Subtração: #{int1 – int2}”
puts “Multiplicação: #{int1 * int2}”
puts “Divisão: #{int1 / int2}”
puts “Módulo: #{int1 % int2}”
puts “Exponenciação: #{int1 ** int2}”