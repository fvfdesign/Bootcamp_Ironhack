require_relative 'string_adder.rb'

class StringCalc < Struct.new(:str)

  def add
    StringAdder.add(str)
  end

  def counter
    str.split(",").length
  end

  def reverse
  	str.("4,1,2,3").sort.reverse
    str.split(',').reverse.join(',')
    #"3,2,1,4"
  end
end

#calculator = StringCalc.new("4,1,2,3") 
# it "returns '3,2,1,4'" do
#   expect(calculator.reverse).to eq("3,2,1,4")
# end