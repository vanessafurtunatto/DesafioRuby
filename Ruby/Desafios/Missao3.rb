result = ''
loop do
 puts result 
 puts 'Para iniciar, selecione uma opção abaixo: '
 puts '1- Somar'
 puts '2- Subtrair'
 puts '3- Multiplicar'
 puts '4- Dividir'
 puts '0- Sair'
 
 option = gets.chomp.to_i
 
 case option 
 when 1..4
   print 'Insira o primeiro número: '
   num1 = gets.chomp.to_i
   
   print 'Insira o segundo número: '
   num2 = gets.chomp.to_i
   case option 
   when 1
    puts "resultado = #{num1} + #{num2} = #{num1 + num2}"
   when 2
    puts "resultado = #{num1} - #{num2} = #{num1 - num2}"
   when 3
    puts "resultado = #{num1} * #{num2} = #{num1 * num2}"
   when 4
    puts "resultado = #{num1} / #{num2} = #{num1 / num2}"
   end
 when 0
   break
 else 
   resultado = 'Opção inválida'
 end

end
system = "clear"