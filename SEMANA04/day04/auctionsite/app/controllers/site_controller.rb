class SiteController < ApplicationController

	def home
		# render 'home' #name of the view template
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end
	
end
