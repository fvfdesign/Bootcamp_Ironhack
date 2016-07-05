class BidsController < ApplicationController

 
  # before_filter do
  #   self.amount = @bid if @bid=@product.minimun_bid_price
  # end




		def create

		email = params[:bid][:email]
    	amount = params[:bid][:amount]

		@product = Product.find(params[:product_id])

		@user = User.find_by(email: params[:email])



		@bid = Bid.new(

		  :user_id => @user.id,
		  :amount => params[:bid][:amount],

		  ) 
		
#........................................

  def create
    email = params[:bid][:email]
    amount = params[:bid][:amount]
    @user = User.find_by(email: email)
    @product = Product.find(params[:product_id])
    @bid = Bid.new(product_id: @product.id, user_id: @user.id, amount: amount)
    if @bid.valid_bid_amount?(@product) && @bid.valid_bid_user?(@product) && @bid.save
      flash[:notice] = "Bid saved succesfully!"
    else
      flash[:alert] = "Error"
    end
    redirect_to(user_product_path(@user, @product))
  end

#........................................



			# @Product = Product.new.errors[:minimun_bid_price].any?


				# if @bid == @product.minimun_bid_price

				# else
				# 	puts "You must bid over" 
				# end



		# @bids.save
		redirect_to product_bids_path(@product)

		end



		@highest_bid = Bid.order(amount: :desc).first
		


		def new

		@product = Product.find(params[:product_id]) 
		@bids = @product.bids.new

		end

		# def auction
		# 	if @bid.minimun_bid_price

		# end



		

		

		

		def index

		@product = Product.find(params[:product_id])


		@bids = @product.bids
		

			# unless @bid 
			# 	render "no_product_found"
			# 	end
		end


		def update

			if @bid.deadline

			redirect_to "/products"

			end
		end

end
