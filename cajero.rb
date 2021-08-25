class CuentaBancaria
  attr_accessor :dni, :cuenta, :saldo, :interes

  def initialize (dni, cuenta=0, saldo, interes)
    @dni = dni
    @cuenta = cuenta
    @saldo = saldo
    @interes = interes
  end

  def generar_cuenta
    cuenta=rand(1000000...10000000)
    puts "Sue nueva cuenta generada es: ", cuenta
  end

  def actualizar_saldo
    interes_diario = (interes/365)
    descuento= (saldo*interes_diario)/100
    saldo = (saldo-descuento)
    print "El saldo acutual de la cuenta ", cuenta, " el dia ", Time.now.strftime("%F %T"), " es de ", saldo
  end

  def ingresar(deposito)
    saldo = (saldo+deposito)
    print "Se acaba de depositar la cantidad de $", deposito, " pesos a la cuenta ", cuenta, ", su nuevo saldo es de: ", saldo

  end

  def retirar(retiro)
    if retiro <= saldo
      saldo =(saldo-retiro)
      print "Se acaba de retirar la cantidad de ", retiro, " a la cuenta ", cuenta, ", su nuevo saldo es de: ", saldo
    else
      print "Saldo insuficiente"
    end
  end

  def mostrar
    puts "Numero de cuenta: ", cuenta
    puts "Saldo de la cuenta: ", saldo
    puts "DNI: ", dni
    puts "Interes: ", interes
  end

end

datos= CuentaBancaria.new(12414, 20000, 10.0)

datos.generar_cuenta
print datos.mostrar
puts datos.retirar(100)
print datos.mostrar