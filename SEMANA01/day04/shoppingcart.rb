#SHOPPING CART

# class Cart

# 	attr_accessor :fruits, :price
# 	def initialize (fruits, price)
# 		@fruits = fruits
# 		@price = price
# 	end
# end
class Fruit
	attr_accessor :name, :price #:quantity
	def initialize(name, price) #quantity
		@name = name
		@price = price
		# @quantity = quantity
	end
end

class ShoppingCart
	
	attr_accessor :list_of_product
	def initialize(list_o_products)
		@list_of_product = []
	end

	def add_item_to_cart(fruit)
		@list_of_product.push(fruit)
		# # @list_of_product(fruit) =+ 1
		# puts @list_of_product

	end

	def show_cart
		@list_of_product
    # @list_of_product.each do |fruit, quantity|
      # total_price = get_fruit_total_price(@list_of_prices[fruit], quantity)
      #puts "#{quantity} #{fruit}: #{total_price}"
    end

		# puts @list_of_product 

	def cart_price
		total_price = 0
		@list_of_product.each do |item|
		  # total_price += item.price
		  total_price = total_price + item.price
	    end
	    total_price
	end
end



list_o_products = {
	:apple => 10, 
	:orange => 5, 
	:grape => 15, 
	:banana => 40, 
	:watermelon => 50
}



cart = ShoppingCart.new(list_o_products)
apple = Fruit.new("apples", 10)
orange = Fruit.new("oranges", 5)
grape = Fruit.new("grapes", 15)
banana = Fruit.new("banana", 40)
watermelon = Fruit.new("watermelon", 50)


cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
puts cart.cart_price
#puts cart.show_cart








