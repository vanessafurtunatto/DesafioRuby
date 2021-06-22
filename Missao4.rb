
# Missão 1

array = []

i = 1

1..3.times do
print “Insira o primeiro valor: ”
array.push gets.chomp.to_i

i += 1
end

array.each do |num|
result = num ** 2
puts 'O resultado do #{num} elevado a segunda potência é #{result}'
end

# Missão 2
hash = {}
 
3.times do 
 print 'Insira sua chave: '
 chave = gets.chomp
 
 print 'Insira seu valor: '
 valor = gets.chomp
 
 hash[chave] = valor
end
 
hash.each do |c, v|
 puts 'A chave é #{c} e o seu valor é #{v}'
end

# Missão 3

num = {a: 1, b: 2, c: 3, d: 4}
 
numero_maior = 0
resultado = []
 
num.each do |chave, valor|
 if valor > numero_maior
   numero_maior = valor
   resultado = [chave, valor]    
 end
end
 
puts 'O maior número é correpondente a chave #{resultado[0]} com valor #{resultado[1]}'