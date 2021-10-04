class Animal
  attr_accessor :nombre
  def initialize(nombre)
    @nombre = nombre
  end
end
class Perro < Animal
  def saluda
    puts "Guuauf!"
  end
end
class Gato < Animal
  def saluda
    puts "Miiiaaau!"
  end
end
solobino=Perro.new("solobino")
solobino.saluda
michi=Gato.new("michi")
michi.saluda