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


 





  

 