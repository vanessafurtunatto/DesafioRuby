#Missão 1
texto = 'Olá, tudo bem? Meu whats app é (83) 9 4002-8922'
match = /\(\d{2}\) \d \d{4}-\d{4}/.match(texto)
puts match


#missão 2

class Car
    def get_km(ret)
      km = find_km(ret)
      puts km
    end
    
    private
    
    def find_km(ret)
      /\d{2,}km\/h/.match(ret)
    end
   end
    
   ret = "Um fusca de cor amarela viaja a 80km/h"
    
   car = Car.new
   car.get_km(ret)