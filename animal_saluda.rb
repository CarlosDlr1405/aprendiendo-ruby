class Animal
  def initialize(nombre, color, tamaño)
    @nombre = nombre
    @color = color
    @tamaño = tamaño 
  end
  
  def caminar
    print "Hola soy ", @nombre , ", mi color es ", @color, " , mi tamaño es ", @tamaño, " y voy caminando"
  end
      
  def correr
    print "Hola soy ", @nombre , ", mi color es ", @color, " , mi tamaño es ", @tamaño, " y voy corriendo"
  end
end
  
class Perro < Animal
  def correr
  super
    print (", Guuaau")
  end
  def caminar
  super
    print (", Guuaau")
  end
end
  
class Gato < Animal
  def caminar
  super
    print (", Miaaaauu")
  end
  def correr
  super
    print (", Miaaaauu")
  end
end
  
datos = Perro.new("ansi", "negro","pequeño")
print datos.correr
  
