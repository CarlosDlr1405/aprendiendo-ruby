require "securerandom"
class Persona
  def initialize(nombre, edad, dni, sexo, peso, altura)
    @nombre = nombre
    @edad = edad
    @dni = ""
    @sexo = sexo
    @peso = peso
    @altura = altura
  end

  def peso_ideal
    a=-1
    b=0
    c=1
    x= @peso/(@altura*@altura)

    if x < 20 
      print a
    end
    if x > 20 and x <= 25
      print b
    end
    if x > 25
      print c
    end
  end

  def mayor_edad
    if @edad >= 18
      print "la persona ", @nombre , " es mayor de edad"
    end
  end

  def comp_sexo
    if @sexo =="H" || @sexo == "M"
      if @sexo=="H"
        print "Hombre "
      else
        print "mujer"
      end
      print " el sexo introducido es valido"

    else
      print "sexo invalido"
    end
  end

  def regresar_datos
    print "Mi nombre es ", @nombre, " tengo la edad de ", @edad, " peso " , @peso, " kilogramos, mido ", @altura, " metros y mi sexo es ", @sexo
  end

  def generar_dni
    @dni= SecureRandom.alphanumeric(8)
    print "su nuevo DNI generado es: ", @dni
  end

end
datos=Persona.new("Carlos", 25, "231", "M", 75, 1.72)
puts datos.peso_ideal 
puts datos.mayor_edad
puts datos.comp_sexo
print datos.regresar_datos
puts ""
puts datos.generar_dni
