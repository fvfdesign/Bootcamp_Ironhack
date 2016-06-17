class Car 
  # attr_accessor :color
  def initialize(sound, engine)
    @sound = sound
    @engine = @engine
  end

  def sound
    puts @sound
    @engine.sound
end

end


class Engine
  def initialize(sound)
    @sound = sound
  end

  def sound
  puts @sound
  end

  class ElectricEngine < Engine
    def initialize
      super("shhhhhhhh")
    end
  end


  class GasoilEngine < Engine
    def initialize
      super("BRRRRRRRRR")
    end
  end


end

puts "Electric car sound"

Car.new("BRRRRROOOMMMMM", ElectricEngine.new).sound

puts "Electric car sound"

Car.new("BRRRRROOOMMMMM", GasoilEngine.new).sound
# my_new_car = Car.new





