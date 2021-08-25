require "securerandom"
class Password
  def initialize (longitud =8)
    @longitud= longitud
  end

  def generate
    password= SecureRandom.alphanumeric(longitud)
    return password
  end
  private 
  attr_accessor :longitud
end

obj=Password.new()
print obj.generate
puts "Hi"
obj.longitud = 10
print obj.generate
puts "Hi"
obj.longitud = 15
print obj.generate
puts "Hi"
obj.longitud = 20
print obj.generate