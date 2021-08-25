class Calculadora
  def initialize(value_one, value_two)
    @value_one = value_one
    @value_two = value_two
    mensaje
  end

  def sum
    @value_one + @value_two
  end
    
  def rest
    @value_one - @value_two
  end

  def multiplicacion
    @value_one * @value_two
  end

  def divicion
    @value_one / @value_two
  end

  def mensaje
    print("Hola amiguitos, soy una calculadora")
  end
end
    
y=Calculadora.new(3, 5)
print y.sum
