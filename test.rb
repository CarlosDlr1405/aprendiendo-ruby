class Calculadora
  def suma (a, b)
    a+b
  end
  def resta (a, b)
    a-b
  end
  def multiplicación (a, b)
    a * b
  end
  def division (a,b)
    a/b
  end
end
calc=Calculadora.new
tests_sum = {
  [1,2] => 3,
  [3,6] => 9,
  [200,322] => 522,
} 
tests_sum.each do |input, expect_result| 
  if  !(calc.suma(input[0], input[1]) == expect_result)
  raise "La prueba fallo para los inputs #{input}. Resultado esperado es #{expect_result}"
  else
    puts "La prueba fue todo un exito campeon"
  end
end