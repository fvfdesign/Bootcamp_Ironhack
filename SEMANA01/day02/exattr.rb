class Person
 attr_reader :name 
 attr_accessor :age
 def initialize (name, age)
 	@name= name
 	@age=age
 end

 person=Person.new("Manuel",29)

 puts person.name
 puts person.age

 @name = IO.read('name.txt')

 ............