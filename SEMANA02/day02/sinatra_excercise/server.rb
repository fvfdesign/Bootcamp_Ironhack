require 'sinatra'

get '/hi' do 
	
	erb(:about)
	
end

get "hi/:name" do
  @name = params[:name]
  erb(:hello)
	end

# http://localhost:4567/hi