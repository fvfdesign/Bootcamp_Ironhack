require 'sinatra'
require 'haml'
require "sinatra/reloader" if development? # gem install sinatra-contrib
require_relative 'app/models/twit.rb'


PASSWORDS = {fer: "09876", guest:"out"}

@@twits = []

set :haml, :format => :html5
enable(:sessions)


get "/" do
  haml(:homepage)

  if session[:logged_in]
    erb(:profile)
  else
    erb(:login)
  end


post "/form_receptor" do
  @name = params[:username].to_sym
  if PASSWORDS[@name] = params[:password]
    session[:logged_in] = true
    erb(:profile)
  else
    @error = "Try again"
  end
end



post '/new_tweet' do
  @body = params[:body]
  twit = Twit.new(@body)
  if twit.valid?
    @@twits << twit
    @body = ""
    redirect("/")
  else
    @error = "Twit invalid"
  end
  haml(:homepage)
end

