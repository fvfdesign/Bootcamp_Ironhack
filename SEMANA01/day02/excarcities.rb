class Car
 attr_reader :cities
 def initialize
 	@cities=Array.new
 	
 end

 def add_city (city)
 	@cities.push(city)
 	
 end
end

new_car = Car.new

new_car.add_city("Madrid")
new_car.add_city("London")	
new_car.add_city("Toledo")

puts new_car.cities



