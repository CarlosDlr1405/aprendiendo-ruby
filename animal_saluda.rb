class Animal
  def initialize(nombre, color, tamaño)
    @nombre = nombre
    @color = color
    @tamaño = tamaño
    
  end

  def caminar
    print ("Estoy caminando ")
  end
    
  def correr
    print ("Estoy corriendo soy " )
  end

  def saludar
    print "Hola amiguitos, soy  "
    print @nombre
    print " mi color es ", @color , " y mi tamaño es ", @tamaño
  end
end

class Perro < Animal
  def saludar
    super
    print (", Guuaau")
  end
end

class Gato < Animal
  def saludar
    super
    print (", Miaaaauu")
  end
end

datos = Gato.new("ansi","negro","pequeño")

print datos.saludar
