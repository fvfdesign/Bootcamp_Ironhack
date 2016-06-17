class Car

	def initialize
	@file="cities.txt"
	end

	def add_city(city)
	@cities_visited=IO.read(@file)
	IO.write(@file,@cities_visited + "\n" + city)
	end

end

my_car = Car.new

my_car.add_city("Seattle")
my_car.add_city("NY")


........................

class Car

def initialize (file)
@file=file
	end

def add_city(city)
	@cities_visited=IO.read(@file)
	IO.write(@file,@cities_visited+"\n"+city)
	end

end

my_car = Car.new "my_car.txt"

my_car.add_city("Seattle")
my_car.add_city("NY")


my_other_car= Car.new "my other.txt"