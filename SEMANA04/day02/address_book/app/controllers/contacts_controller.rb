class ContactsController < ApplicationController


	def new
	end

  	def create
	    contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone_number => params[:contact][:phone_number],
	      :email_address => params[:contact][:email_address])

	    # Now we save the contact
	    contact.save

	    redirect_to '/contacts'
  	end


  	def index

		@contacts = Contact.order(created_at: :desc)
		
	end

	def details
		@details = Contact.find(params[:id])
	end
end