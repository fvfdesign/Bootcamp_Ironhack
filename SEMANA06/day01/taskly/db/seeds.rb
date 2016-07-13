users = User.create([

	{name: 'Ana Sanz', email:'ana@gmai.com'},
	{name: 'Carlos Colom', email:'carlos@gmail.com'}

	])

task = Task.create([
{name: 'User1 Task1', due_date:DateTime.now, user_id: User.first.id},
{name: 'User1 Task2', due_date:DateTime.now, user_id: User.first.id},
{name: 'User2 Task1', due_date:DateTime.now, user_id: User.first.id}
	])



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
