25.times.each_with_index do |item, index|
	project = Project.create(
		name: "Project number #{index}",
		description: "This is my project number #{index}"
)



project.time_entries.create(
date: Date.today - rand(10).days,
hours: rand(24),
minutes: rand(60)
)

end

#Add project a time entry
#Using: project.time_entries.create OR project 


























# poject.create(name: "xxxxx")

# (1..100).each do |i|
# 	Project.create(name: "car" + i) #Project 1 (concate)
	
# end



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
