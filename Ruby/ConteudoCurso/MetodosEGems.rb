#Métodos e Gems 

#Criando o método

def talk
    puts 'Olá, como você está?'
   end
    
   talk

#Parâmteros
def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name}, como você está?"
   end
    
   first_name = 'Leonardo'
   last_name = 'Scorza'
    
   talk(first_name, last_name)

#Retorno
def compare(a, b)
    a > b
   end 
    
   a = 1
   b = 2
    
   result = compare(a, b)
    
   puts "O resultado da comparação é '#{result}'"

#Gems

#Intalação
gem install os

#Desisntalar 

gem uninstall gem_name

#Informação

gem list

#Bundler

#Instalação
gem install bundler

source 'https://rubygems.org'
 
gem 'os'

#Rode
bundle install



