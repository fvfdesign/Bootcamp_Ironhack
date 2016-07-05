
User.create(name: 'Juan', email: "juan@gmail.com")
User.create(name: 'Dani', email: "dani@gmail.com")
User.create(name: 'Alex', email: "alex@gmail.com")
User.create(name: 'Ana', email: "ana@gmail.com")

Product.create(user_id: 1, title: "Bag", description: "Sport Product", deadline: Date.today, minimun_bid_price: 20)
Product.create(user_id: 2, title: "TCM Collection", description: "Movies Product", deadline: Date.today, minimun_bid_price: 30)
Product.create(user_id: 3, title: "MP3", description: "Technology Product", deadline: Date.today, minimun_bid_price: 15)
Product.create(user_id: 4, title: "GPS tom tom", description: "Travel Product", deadline: Date.today, minimun_bid_price: 25)



# (1..6).each do |i|

# user = User.create (name: "Juan" + i.to_s,email:"@gmail.com" + i.to_s)


# user.product.create(

# title: "Nombre de producto" + i.to_s ,
# description: "producto" + i.to_s
# deadline: Date.today
# )













# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
