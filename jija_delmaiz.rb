class Negocio
  def initialize (numero_de_orden,total=0)
    @total=total
    @numero_de_orden = numero_de_orden
  end

  def menu 
    puts "chico=$15", "mediano=$20", "grande=$35", "verdura al vapor=35", "tostielote=tostiloko=$35", "nachos=$25"
  end

  def pedido(chico, mediano, grande, verdura, tosti, nachos)
    a=chico*15
    e=mediano*20
    i=grande*35
    o=verdura*35
    x=tosti*35
    u=nachos*25
    @total=a+e+i+o+u+x
    print "Orden numero: ", @numero_de_orden,"\n"
    puts "usted encargo: "
    print "chico=", chico, "\n"
    print "mediano=", mediano, "\n"
    print "grande=", grande, "\n"
    print "verdura=", verdura, "\n"
    print "tosti=", tosti, "\n"
    print "nachos=", nachos, "\n"
  end


  def pagar(efectivo)
    print "total a pagar: $", @total, "\n"
    print "usted dejo la cantidad de: ", efectivo, "\n"
    vuelto=efectivo-@total
    print "Su cambio es de: ",vuelto, "\n"
  end
end

venta=Negocio.new(3)
#chico, mediano, grande, verdura, tosti, nachos
print venta.pedido(1, 0, 0, 0, 0, 0)
print venta.pagar(50)