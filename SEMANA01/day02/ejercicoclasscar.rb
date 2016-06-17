class Car
	def initalize (noise, color)
		@noise = noise
		@color = color
	end

	def noise_car01
		puts "Broom"
	end

	def noise_car02
		puts "BROOOOOOOOM"
	end
end

car_01 = Car.new 
car_01.noise_car01

car_02 = Car.new
car_02.noise_car02



# class Car
# 	def initalize (noise)
# 		@noise = noise
# 	end

# end

# car_01 = Car.new "Broom"
# car_02 = Car.new "BROOOOOOOOM"
