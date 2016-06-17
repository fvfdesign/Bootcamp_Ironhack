class Storing
  attr_accessor :previous_operator

  def initialize
    @previous_operator = []
  end

  def add_to_button(number)#(product, quantity)
    @previous_operator << number
  end
end

storing = Storing.new()

#PARA GUARDAR RESULTADO Y USARLO EN LA PROXIMA OPERACION // NO FUNCIONA
