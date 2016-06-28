class TextinspectionsController < ApplicationController

	def new
	end

	def create

    @text = params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length

    @words_minute = (@word_count.to_f * 60) / 275
 
    render "results"

  	end


  	def word_counter
		
		@wc = {}
		
		@text = "hola que tal, estamos aqui hola tal"
		
		@wcounter = @text.split(" ")

		@wcounter.each do |word| 
  		
	  		if wc[word]
	  			wc[word] = wc[word] + 1
	  		else
	  			wc[word] = 1
	  		end

  		end

  		puts @wc

  		binding.pry
# @strings = ();

	end



end




	# def create
 #    	@text = params[:text_inspection][:user_text]
 #    	render plain: @text
 #  	end



    #  @text = params[:text_inspection][:user_text]

    # @word_count = @text.split(" ").length

    # render plain: @word_count



    # @text = params[:text_inspection][:user_text]
    # @word_count = @text.split(" ").length

    # render "results"