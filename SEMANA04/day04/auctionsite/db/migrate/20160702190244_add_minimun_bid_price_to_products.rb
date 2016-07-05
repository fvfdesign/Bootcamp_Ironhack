class AddMinimunBidPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :minimun_bid_price, :integer
  end
end
