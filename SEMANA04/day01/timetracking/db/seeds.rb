poject.create(name: "xxxxx")

(1..100).each do |i|
	Project.create(name: "car" + i) #Project 1 (concate)
	
end



# rake db:drop db:create db:migrate :db seed

# create migrate seed = (db: setup)

# drop create migrate seed = (db:reset) 

#//...........................................


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
