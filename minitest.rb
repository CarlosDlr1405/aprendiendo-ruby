require "minitest/autorun"

class Calculator
  def suma (a,b)
    a+b
  end
  def resta (a,b)
    a-b
  end
end
class TestCalculatort<Minitest::Test
  def setup
    @calc=Calculator.new
  end

  def test_suma_positivos
    result=@calc.suma(2,5)
    assert_equal result, 7
  end

  def test_suma_negativos
    result=@calc.suma(-1,-5)
    assert_equal result, -6
  end

  def test_suma_combinados
    result=@calc.suma(-4,2)
    assert_equal result,-2
  end
end
