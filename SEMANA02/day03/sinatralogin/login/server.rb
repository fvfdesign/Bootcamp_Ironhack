#mirar primero si ha estado, si ha estado se le deja login, 
# si no se le ense>na una form con user name y password, se hace check

# require "sinatra"

# require "pry"
# require "sinatra /reloader" if development?

# # require_relative("../lib/usernamepassword.rb")

# enable(:sessions)

# PASSWORDS = {fer: "09876", guest:"outofsession"}

# user =
# { Josh: "098765", Alex:  "123567"}

# get "/" do

# 	logged = session[:logged_in]
# 	if logged
# 		erb(:profile)
# 	else
# 		erb(:login)
# 	end
# end


#.........................................................

require "sinatra"

# require "pry"
# require "sinatra /reloader" if development?


# CODIGO DE JAKE

PASSWORDS = {fer: "09876", guest:"out"}



get "/" do

	if session[:logged_in]
		erb(:profile)
	else
		erb(:login)
	end

	# logged = session[:logged_in]
	# if logged
	# 	erb(:profile)
	# else
	# 	erb(:login)
	# end
end


post "/form_receptor" do
	@name = params[:username].to_sym
	if PASSWORDS[@name] = params[:password]
		session[:logges_in] = ture
		erb(:profile)
	else
		@error = "Get out you"
	end
end

#.........................................................






