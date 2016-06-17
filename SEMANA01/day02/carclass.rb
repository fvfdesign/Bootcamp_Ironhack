class Car 
	# attr_accessor :color
	def initialize(sound, color, speed)
		@sound = sound
		@color = color
		@speed = speed
		@visited_cities = []
	end



	def noise
		puts @sound
	end

	# def speed_increment(amount)

	# 	@speed += amount
	# end

	# def speed_up

	# 	@speed = @speed + 10
	# end


		def speed_up(km_h)

		@speed = @speed + km_10
	end



	# def speed
	# 	@speed
	# end

	def cities
		puts @visited_cities
	end

	def add_city
	puts @visited_cities<< city 
end
		
end




	def self.class_noise(car_making_noise)
	  car_making_noise.noise   
	  car_making_noise.noise
	end 
	

end

my_car = Car.new("BROOM", "red", 0)
my_car02 = Car.new("BROOOOOOOOOM", "blue", 10)
# my_car.noise 
# my_car02.noise
# puts my_car.speed
# my_car.speed_increment(50)
# puts my_car.speed
# my_car.speed_up(100)
my_car.add_city("madrid")
my_car.cities

# Car.class_noise(my_car)


# cities_array = []




	# def color
	# 	return @color
	# end

	# def color(color)
	# 	@color = color
	# end

#...................................

# class Car
# 	def sound
# 		puts "Broommm"
# 	end
# class Car 
	

# 	def noise
# 		puts "BROOM"
# 	end
# end

# my_car = Car.new 
# my_car.noise 

#...................................


# class Car 
# 	def initialize 
# 		@sound = "BROOM"
# 	end

# 	def noise
# 		puts @sound
# 	end
# end

# my_car = Car.new 
# my_car.noise 


