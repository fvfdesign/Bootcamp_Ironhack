# spec/app_spec.rb
require File.expand_path '../../spec_helper.rb', __FILE__
require_relative '../../app/models/blog.rb'
require_relative '../../app/models/post.rb'

RSpec.describe "blog" do
	let(:blog) { Blog.new }
	let(:post1) { Post.new("Lorem", Time.local(2016, 4, 6), "Lorem ipsum dolor sit amet", "Culture", "Ana") }
	let(:post2) { Post.new("Livamus", Time.local(2016, 3, 10), "LVivamus feugiat mauris",  "Economics", "Jhon") }
	let(:post3) { Post.new("Etiam", Time.local(2016, 2, 7), "Etiam aliquam leo eu ligula", "Math", "Jean") }

	it "returns an array of the posts added" do
	  # expect(blog.array.size).to eq(3)
	    expect(blog.add_post(post1).class).to be([].class)
	end

	it "order posts by date with the latest posts being first" do
		blog.add_post(post1)
		blog.add_post(post2)
		blog.add_post(post3)
		expect(blog.order_post[0]).to eq(post3)
	end

	it "shows each post's title and date" do
		blog.add_post(post1)
		expect(blog.show_post).to eq(blog.posts)
	end
		# 	it "shows each post's title and date" do
		# blog.add_post(post1)
		# expect(blog.shows_post).to contain_exactly("Lorem and 2016, 04, 06")
	

end