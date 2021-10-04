class Person
  def initialize(name, last_name, age)
    @name = name
    @last_name = last_name
    @age = age
  end
  def presentarse
    print "me llamo " , @name , @last_name , " tengo la edad de " , @age , " años"
  end
  #public se puede acceder desde dentro o fuera de la clase
  #private no se puede acceder desde fuera de la clase
  #protected Funciona de manera publica dentro de la clase y de manera privada desde fuera de la clase
  def bailar
    print @name, " esta bailando"
  end
end


x=Person.new("carlos", "de la rosa", 25)
puts x.bailar