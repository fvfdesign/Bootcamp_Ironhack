class Bid < ActiveRecord::Base

	belongs_to :product	

	# validates :bid, :numericality => true
	#validates :bid, :numericality => { greater_than_or_equal_to: :minimun_bid_price }


	# validate :bid_valid


#........................................


	validates :amount, presence: true
	validates :amount, numericality: true

	def valid_bid_amount?(product)
	    amount >= product.minimum_bid_price && amount >= product.get_maximum_bid__price_amount
	end

	def valid_bid_user?(product)
	    user_id != product.user_id
	end



	def getUserName
		user = User.find self.user_id
		user.name
	end

	#........................................

	# private
		
	# def bid_valid
	# 	if @bid != @product.minimun_bid_price
	# 	      errors.add(:bid, "is not a valid bid.")
	# 	 end
	# end


    # validate if :minimun_bid_price
    # private
    # def ensure_meets_minimun_bid_price
    #     if amount < self.product.minimun_bid_price
    #         errors.add(:amount, "does not meet minimun bid price")
    #     end
    # end


end
