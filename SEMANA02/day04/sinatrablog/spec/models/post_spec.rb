# spec/app_spec.rb
require File.expand_path '../../spec_helper.rb', __FILE__
require_relative '../../app/models/blog.rb'
require_relative '../../app/models/post.rb'

RSpec.describe "post" do
	
	let(:post1) { Post.new("Lorem", Time.local(2016, 4, 6), "Lorem ipsum dolor sit amet", "Culture", "Ana") }
	let(:post2) { Post.new("Livamus", Time.local(2016, 3, 10), "LVivamus feugiat mauris",  "Economics", "Jhon") }
	let(:post3) { Post.new("Etiam", Time.local(2016, 2, 7), "Etiam aliquam leo eu ligula", "Math", "Jean") }


	it "should be a string" do

		expect(post1.text.class).to eq("".class)
	end

end

