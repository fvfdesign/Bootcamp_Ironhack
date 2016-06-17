require 'pry'

class User

	def initialize(name, password)
		@name = name
		@password = password
	end

	# def log_in
	# 	puts "Enter user name"
	# 	user_name = gets.chop
	# end

	# def password
	# 	puts "Enter password"
	# 	answer_password= gets.chop
	# 	if answer_password == @password
	# 		puts "Enter some text"
	# 	end

		# text = text.length

	def validation

		puts "Enter user name"
		user_name = gets.chomp

		puts "Enter password"
		answer_password = gets.chomp
		if answer_password == @password
			get_text
		else
			counter = 0
			while counter !=3 || answer_password!=@password do
			  puts "invalid password"
			  $stdin.gets.chomp
			  counter += 1
			end
		end
	end

	def get_text
		puts "Enter some text"
		text = gets.chomp
		puts text.split.length
	end
end

user = User.new("fer", "12345")
user.validation

	

