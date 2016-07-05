class User < ActiveRecord::Base

	has_many :products

  	validates :email, presence: true, uniqueness: true
  	#validates_confirmation_of :password
  	#validates_lenngth_of :password, minimum: 3


end
