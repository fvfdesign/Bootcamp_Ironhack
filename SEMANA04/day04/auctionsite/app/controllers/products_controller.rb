class ProductsController < ApplicationController

	def home
		@products = Product.all
	end

	def index

		@user = User.find(params[:user_id]) 
		@products = @user.products

		#@products = Product.all
	end 


	def new

		@user = User.find(params[:user_id]) 
		@product = @user.products.new

	end	


	def create
		@user = User.find(params[:user_id])
		@product = @user.products.create(
		:title => params[:product][:title],
		:description => params[:product][:description],
		:deadline => params[:product][:deadline],
		:minimun_bid_price => [:product][:minimun_bid_price]
		)

		if @product.save
      	flash[:notice] = 'Product created successfully'
    	else
      	flash[:alert] = "Product couldn't be created"
      	@errors = @product.errors.full_messages
    	end
		
		redirect_to "/users/#{@user.id}/products"
	end 



	def show
		@product = Product.find_by(id: params[:id])

			unless @product 
			render "no_product_found"
			end

		#@highest_bid = Bid.where(user_id: params[:id]).order("amount DESC").first

		

		#@highest_bid = Bid.where(user_id: :id).order(amount: :desc).first


		@highest_bid = Bid.order(amount: :desc).first


	end 

	def destroy


		#find the user
		@user = User.find params[:user_id]

		#find the product
		@products = @user.products.find(params[:id])

		#delete the product
		@product.destroy

		#redirect to the index action
		redirect_to action: :index,  user_id: user.id

		# redirect_to products_url
	end 

end



	  # def destroy
	  #   @product.destroy
	  #   respond_to do |format|
	  #     format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
	  #     format.json { head :no_content }
	  #   end
	  # end







