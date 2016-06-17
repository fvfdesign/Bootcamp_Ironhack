require_relative "post.rb"
require 'pry'
	class Blog
	  attr_accessor :posts

	  def initialize
	    @posts = []
	  end

	  def add_post(post)
	  	@posts.push(post)
	  end

	  # def array
	  # 	@posts
	  # end

	  def order_post
	  	@posts.sort do |element1, element2|
	  		element1.date <=> element2.date
		end
	  end

	  def show_post
		@posts
	  end
	end


 


# blog = Blog.new
# blog.add_post Post.new("Lorem", Time.local(2016, 4, 6), "Lorem ipsum dolor sit amet")
# #blog.add_post Post.new("Livamus", Time.local(2017, 3, 10), "LVivamus feugiat mauris.")
# #blog.add_post Post.new("Etiam", Time.local(2018, 2, 7), "Etiam aliquam leo eu ligula.")
# puts blog.order_post[0].title
# #puts blog.posts[0].title
# blog.show_post.class



  

 