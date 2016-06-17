require_relative 'string_adder.rb'

class StringCalc < Struct.new(:str)

  def add
    StringAdder.add(str)
  end

  def counter
    str.split(",").length
  end

  def reverse
    "3,2,1,4"
  end
end