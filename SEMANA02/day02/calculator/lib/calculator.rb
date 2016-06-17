class Calculator 
	attr_accessor :first_number, :second_number
	
		def initialize(first_number, second_number)
			@first_number = first_number
			@second_number = second_number
		end

	  def add
		@first_number + @second_number
	  end

	  def substract
		@first_number - @second_number
	  end

	  def multiply
		@first_number * @second_number
	  end

	  def divide
		@first_number / @second_number
	  end

end

calculator = Calculator.new(1,1)
# Calculator.new(3, 5)