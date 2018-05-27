# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método
# engine_start enciende el vehículo.
class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
   @model = model
   @year = year
   @start = false
 end
 def engine_start
   @start = true
 end
end
# Se pide:
# Crear una clase Car que herede de Vehicle
class Car < Vehicle
  @@cantidad = 0
  def initialize(model= '', year= '')
    super
    @@cantidad += 1
  end
  def self.countinstancias
    puts @@cantidad
  end
  def engine_start
    super
    puts 'El motor está encendido!'
  end
end

auto1 = Car.new('lada',1987)
puts auto1.model

10.times do |i|
  Car.new
end
Car.new.engine_start
Car.countinstancias
# El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
# contador de instancias de Car.
# Crear un método de clase en Car que devuelva la cantidad de instancias.
# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars.
# Consultar la cantidad de instancias generadas de Car mediante el método de clase
# creado.
