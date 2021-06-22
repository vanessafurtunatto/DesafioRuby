#Missão 1

def capitalize_name(lambda_capitalize)
    lambda_capitalize.call('Vanessa')
    lambda_capitalize.call('Furtunato')
   end
    
   lambda_capitalize = -> (name) { puts name.capitalize }
    
   capitalize_name(lambda_capitalize)

#Missão 2
module Person

 class Juridic
   def initialize(name, cnpj)
     @name = name
     @cnpj = cnpj
   end
 
   def add
     puts 'Pessoa Jurídica Adicionada'
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
     puts 'Pessoa Física Adicionada'
     puts "nome: #{@name}"
     puts "cpf: #{@cpf}"
   end
 end
 Person::Juridic.new('Neon', '7635.100/0005').add
Person::Physical.new('Vanessa Furtunato', '893.657.433-003').add
end
 