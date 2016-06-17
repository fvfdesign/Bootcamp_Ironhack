require "sinatra"
require_relative("lib/calculator.rb")
require_relative("public/storingdata.rb")

enable(:sessions)

get "/add" do
  erb(:add)
  # erb(:result)
end

post "/calculate_add" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  # result = first + second
  calculator = Calculator.new(@first, @second)
  @result = calculator.add
  @operator = '+'
  #"#{first} + #{second} = #{result}"

	erb(:result)
end

post "/calculate_substract" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  # result = first + second
  calculator = Calculator.new(@first, @second)
  @result = calculator.substract
  @operator = '-'
  #"#{first} + #{second} = #{result}"

	erb(:result)
end

post "/calculate_multiply" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  # result = first + second
  calculator = Calculator.new(@first, @second)
  @result = calculator.multiply
  @operator = '*'
  #"#{first} + #{second} = #{result}"

	erb(:result)
end


post "/calculate_divide" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  # result = first + second
  calculator = Calculator.new(@first, @second)
  @result = calculator.divide
  @operator = '/'
  #"#{first} + #{second} = #{result}"

	erb(:result)
end


#PARA GUARDAR RESULTADO Y USARLO EN LA PROXIMA OPERACION // NO FUNCIONA
post "/store_result" do
		# storing = Storing.new#(@result)
  #   storing.add_to_button(params[:result])

    # erb(:add)
    redirect "/add"
end




