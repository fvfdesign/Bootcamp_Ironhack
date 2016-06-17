# require 'rspec'
require_relative '../app/task.rb'

RSpec.describe Task do
	let(:todolist){ Task.new("")}
  

  	it "is the task complete?" do
    	expect(todolist.tasks).to be(Array)
	end

  	it "is the task complete?" do
    	expect(todolist[0].complete).to eq(true)
	end


end


