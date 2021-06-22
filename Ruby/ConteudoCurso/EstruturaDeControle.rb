#Estruturas de Controle

#Condicional

#If
day = 'Sunday'
if day == 'Sunday'
lunch = 'Special'
end

puts "Lunch is #{lunch} today."

#Else
day = 'Sunday'
if day == 'Sunday'
lunch = 'Special'
else
lunch = 'Normal'
end

puts "Lunch is #{lunch} today."

#Elsif
day = 'Sunday'
if day == 'Sunday'
lunch = 'Special'
elsif day == 'Holiday'
lunch = 'Later'
else
lunch = 'Normal'
end

puts "Lunch is #{lunch} today."

#Unless

product_status = 'closed'

unless product_status == 'open'
check_package = 'can'
else 
check_package = 'can not'
end 

puts "You #{check_change} change the product."

#Case

puts 'Digite o mês que voê nasceu' 
mouth = gets.chomp.to_i

case mouth
when 1..3 
    puts 'Você nasceu no começo do ano'
when 9..12
    puts 'Você nasceu no fim do ano'
when 4..6 
    puts 'Você nasceu na primeira metade do ano'
when 7..9 
    puts 'Você nasceu na segunda metade do ano'
else 
    puts 'Não foi possível identificar'
end

#Iteraçao

#For
fruits = ['Maçã', 'Uva', 'Morango']
 
for fruit in fruits 
  puts fruit
end

#While
 
while x < 10
  puts x
  x += 1
end

#Times
2.times do
  puts 'Estou aprendendo times!'
end
 
names = ['João', 'Alfredo', 'Juca']
3.times do |index|
  puts names[index]
end

#Do/While
count = 1
loop do 
  puts count
  break if count == 10
  count += 1
end

#Iteraçao + Condicional
result = ''
loop do
  puts result 
  puts 'Selecione uma das seguintes opções'
  puts '1- Descobrir a idade de uma pessoa'
  puts '0- Sair'
  print 'Opção: '
  
  option = gets.chomp.to_i
  
  if option == 1
    print 'Digite o ano de nascimento: '
    year_of_birth = gets.chomp.to_i
    print 'Digite o ano atual: '
    current_year = gets.chomp.to_i
    age = current_year - year_of_birth
    result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} anos em #{current_year}"
  elsif option == 0 
    break if option == 0
  else
    result = 'Opção inválida'
  end
  # Comando que limpa o console
  system "clear"
end


