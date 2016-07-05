class Product < ActiveRecord::Base
	
	belongs_to :user

	has_many :bids

	validates :title, :description, :deadline, :minimum_bid, presence: true
  	validates :minimum_bid, numericality: true
  	#validates_numericality_of :minimum_bid

	
end



