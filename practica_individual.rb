class Transporte
  attr_accessor :tipo, :marca, :color, :tipo_combustible, :asientos
  def initialize (tipo, marca, color, tipo_combustible, asientos)
    @marca = marca
    @color = color
    @tipo_combustible = tipo_combustible
    @asientos = asientos
    @tipo = tipo
  end

  def en_marcha
    print "estamos avanzando"
  end

  def freno
    print "estamos frenando, "
  end
end

class Motocicleta < Transporte
  def seguridad
    print "no se te olvide ponerte el casco "
  end
end

class Automovil < Transporte
  def claxon
    print "Piiiiiiii"
  end
end

class Autobus < Transporte
  def cuota
    print "son 8 pesitos porfavor"
  end
end

d=Autobus.new("camion", "italika", "negra", "gasolina", "1")
print "el medio de transporte por el cual esta viajando es ", d.tipo , "marca " , d.marca , " color ", d.color, " "
print d.cuota
