require 'sinatra'
require 'haml'
require "sinatra/reloader" if development? # gem install sinatra-contrib
require_relative 'app/models/blog.rb'
require_relative 'app/models/post.rb'

blog = Blog.new
blog.add_post Post.new("Lorem", Time.local(2016, 4, 6), "Lorem ipsum dolor sit amet, Culture, Ana")
blog.add_post Post.new("Livamus", Time.local(2016, 3, 10), "LVivamus feugiat mauris,  Economics, Jhon")
blog.add_post Post.new("Etiam", Time.local(2016, 2, 7), "Etiam aliquam leo eu ligula, Math, Jean")


get "/" do
  @posts = blog.posts
  erb(:homepage)
end


get "/new_post" do
  erb(:newpost)
  # Show the form
end



post "/new_post" do
    @title = params[:title]
    erb(:title)
  # Receive the form submission
end




# blog = Blog.new
# blog.add_post Post.new(title, date, text)
# blog.add_post Post.new(title, date, text)
# blog.add_post Post.new(title, date, text)

# ES LO MISMO QUE: 
# blog.add_post (Post.new(title, date, text))
# post01 = Post.new(title, date, text)
# .add_post (post01)










# @posts = []

# set :haml, :format => :html5
# enable(:sessions)

# get "/" do
#   haml(:homepage)
# end

# post '/new_tweet' do
#   @body = params[:body]
#   twit = Twit.new(@body)
#   if twit.valid?
#     @@twits << twit
#     @body = ""
#     redirect("/")
#   else
#     @error = "Twit invalid"
#   end
#   haml(:homepage)
# end

