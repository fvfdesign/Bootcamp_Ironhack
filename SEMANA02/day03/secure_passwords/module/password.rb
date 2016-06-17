class PasswordChecker
	def initialize(email, password, name, domain)
		@email = email
		@password = password
		@name = name
		@domain = domain
	end

	def check_password
		@password.length > 7 
	end

	def check_number
		if @password.index(/\d/)
			true
		end
	end

	def check_lowercase_letter
		if @password.index(/[a-z]/)
			true
		end
	end

	def check_symbol
		if @password.index(/\W/)
			true
		end
	end

	def check_uppercase_letter
		if @password.index(/[a-z]/i)
			true
		end
	end

	def check_niether_name_nor_domain
		# if @password != @name && @password != @domain
		# 	false
		# end 
	end
end