# Ejercicio 1: Sintaxis
# Corregir los errores para poder ejecutar ambos métodos.

class MiClase
  def de_instancia
    puts 'Método de instancia!'
  end
  def self.de_clase
    puts 'Método de clase!'
  end
end

MiClase.new.de_instancia
MiClase.de_clase
