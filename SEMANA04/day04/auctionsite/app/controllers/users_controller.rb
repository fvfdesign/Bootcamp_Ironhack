class UsersController < ApplicationController
	

	def index

		@users = User.order(created_at: :desc)
	end


	def show

		@user = User.find_by(id: params[:id])
		# @products = @user.product[user_id: params[:name]]
		
			# unless @user 
			# render "no_user_found"
			# end
	end


	def new
		@user = User.new 
	end



	def create
		@user = User.new(
		name: params[:user][:name],
		email: params[:user][:email])

		@user.save

		redirect_to user_path(@user.id)
	end 




	def destroy



		@user = User.find params[:user_id]
		@products = @user.products.all
		@products.destroy_all
		@user.destroy


		redirect_to action: :index,  user_id: user.id


	end




	# private

	# def user_params

	# 	params.require(:user).permit(:name, :email)

	# end

end
