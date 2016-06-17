 require "sinatra"

require "pry"
require "sinatra /reloader" if development?

enable(:sessions)

get "/" do
	



erb(:about) 
	
end




#...........................................

# require "sinatra"

# require "pry"
# require "sinatra /reloader" if development?

# enable(:sessions)

# get "/" : extra_days do

# 	@date = Date.today + params[:extra_days].to_i
# 	# binding.pry
# 	erb(:about) 
	
# end

# get "/" : extra_days do

# 	@date = Date.today + params[:extra_days].to_i
# 	# binding.pry
# 	erb(:about) 



