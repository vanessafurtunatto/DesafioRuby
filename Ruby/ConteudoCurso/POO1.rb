#POO

#Classes
class Computer
    def turn_on
      'turn on the computer'
    end
    
    def shutdown
      'shutdown the computer'
    end
   end

#Inicializando 

computer = Computer.new
computer.shutdown

#Executando

ruby computer.rb

#Herança 

class ClasseFilha < ClassePai
end

#Programa 

class Animal 
    def pular
      puts 'Toing! tóim! bóim! póim!'
    end
    
    def dormir
      puts 'ZzZzzz!'
    end
   end
    
   class Cachorro < Animal
    def latir
      puts 'Au Au'
    end
   end
    
   cachorro = Cachorro.new
   cachorro.pular
   cachorro.dormir
   cachorro.latir


#Polimorfismo

class Instrumento
    def escrever
      puts 'Escrevendo'
    end
  end
   
  class Lapis < Instrumento
    def escrever
      puts 'Escrevendo à Lápis'
    end
  end
   
  class Caneta < Instrumento
    def escrever
      puts 'Escrevendo à Caneta'
    end
  end
   
   
  instrumentos = [Lapis.new, Caneta.new]
  # Chamamos o método escrever pra qualquer instrumento
  Instrumentos.each do |instrumento|
    Instrumento.escrever
  end