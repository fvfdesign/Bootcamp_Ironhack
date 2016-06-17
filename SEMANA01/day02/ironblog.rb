require "colorize"

class Blog
	# attr_accessor :title, :date, :text, :sponsored
	def initialize 
		@posts = []
	end

	def add_post(post)
		@posts.push(post)
	end

	def publish_front_page 
		puts @posts
	end

	def array_show
		@posts.each do |p|
			puts "#{p.title} \n ************** \n #{p.date} \n #{p.text} \n ----------------"
		end
	end

	def sponsored
		@posts.each do |p|
			if p.sponsored
				puts  "****** #{p.title} ******\n**************"
			else 
				puts "#{p.title}"
			end
			puts "\n ************** \n #{p.date} \n #{p.text} \n ----------------"
		end
	end

	def order_posts
		@posts = @posts.sort do |date01, date02|
			date01.date <=> date02.date
		end
	end

	
end

#       cosas = "caca\npupu\ncalle"
#       array= cosas.split(\n)
#       ["caca", "pupu", "calle"]


class Post
	attr_accessor :title, :date, :text, :sponsored

	def initialize (patata, date, text, sponsored)
		@title = patata
		@date = date
		@text = text
		@sponsored = sponsored
	end
end


blog = Blog.new

blog.add_post(Post.new("Ruby", Time.local(2016, 4, 6), "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", true))
blog.add_post(Post.new("Java", Time.local(2016, 3, 10), "LVivamus feugiat mauris ac tellus egestas.", false))
blog.add_post(Post.new("Css", Time.local(2016, 2, 7), "Etiam aliquam leo eu ligula porta placerat.", true))
blog.add_post(Post.new("Html", Time.local(2016, 5, 5), "Fusce sed enim in dolor mattis mollis.", true))
blog.add_post(Post.new("Python", Time.local(2016, 9, 2), "Uspendisse fringilla nisi ac orci fermentum porta.", false))

# blog.publish_front_page 

blog.order_posts
#blog.array_show
blog.sponsored









