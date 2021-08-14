class Password
  def initialize(longitud, contraseña)
    @longitud = longitud
    @contraseña = contraseña
  end

  def generar_contraseña
    i = 0
    while (i < @longitud)
      x = rand(10)
      @contraseña[i] = x
      print  @contraseña[i]
      i +=1
    end
    
  end
end

producto=Password.new(15, [])
print "Su contraseña generada es: "
print producto.generar_contraseña