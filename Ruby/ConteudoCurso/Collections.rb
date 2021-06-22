#Collections

#Arrays
estados = []

#Adicionando Itens
estados.push('Espírito Santo')

#Inserindos vários elementos
estados.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')

puts estados

#Inserir de Maneira Organizada
	
estados.insert(0, 'Acre', 'Amapá')

#Acessando um elemento ou vários

estados[1]
estados[2..5]

#Pegando o penultimo item 
	
estados[-2]
estados[-3..-1]

#Acessando itens 
estados.first #Para o primeiro
estados.last #Para o último

#Obtendo Informações

estados.count
estados.length

	
estados.empty?
estados.include?('São Paulo')

#Excluindo Elementos
#Por índice
estados.delete_at(2)

#Por estados
estados.pop


#excluir o primeiro item
estados.shift


#Hash

#Criando um hash vazio
capitais = Hash.new

#Criando com chave e valor
capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}

#Hash com vários tipos de dados
hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano, [1,2,3] => 'Chave do tipo array'}

#Adicionando itens
capitais[:minas_gerais] = "Belo Horizonte"

# Acessando pela chave
capitais[:minas_gerais]

#Retornando todas as chaves de um Hash
capitais.keys

#Retornando todos os valores de um hash
capitais.values

#Excluindo um elemento-chave valor
capitais.delete(:acre)

#Obtendo informações
#Tamanho do Hash
capitais.size

#Verificando se o Hash esta vazio
capitais.empty?



#Iterações

#Each

names = ['Joãozinho', 'Manoel', 'Juca']
 
name = 'Leonardo Scorza'
 
names.each do |name|
 puts name 
end
 
puts name


#Map

array = [1, 2, 3, 4]
 
# \n é uma quebra de linha 
puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
new_array = array.map do |a| 
             a * 2
           end
 
puts "\n Array Original"
puts " #{array}"
 
puts "\n Novo Array"
puts " #{new_array}"
 
puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |a| 
 a * 2
end
 
puts "\n Array Original"
puts " #{array}"
puts ''

#Select

array = [1, 2, 3, 4, 5, 6]
 
selection = array.select do |a|
             a >= 4
           end
 
puts selection

