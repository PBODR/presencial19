# Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo
# mediante Mixin para poder acceder al método dieta desde la instancia. Finalmente
# imprimir la definición de Hervíboro.
module Herviboro
 @@definir = 'Sólo me alimento de vegetales!'
 def self.definir
   @@definir
 end
 def dieta
   "Soy un Herviboro!"
 end
end

class Animal
 def saludar
   "Soy un animal!"
 end
end
class Conejo < Animal
 def initialize(name)
 @name = name
 end
 include Herviboro
end
conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir
