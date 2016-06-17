# Please read first the comments and then try the examples

# We create a class Person :)
class Person1
  # Hint 1 # Comment it later out
  # attr_accessor :name, :age

  # We initialize the class Person with to parameters
  def initialize(parameter_1_name, parameter_2_age)
    # Passing the parameters to the instance variables @name & @age
    @name = parameter_1_name
    @age = parameter_2_age
  end
  # We provide a method that simply prints
  # the value from the instance variable @name
  def output_name
    puts @name
  end
  # The same here: we provide a method that simply prints
  # the value from the instance variable @name
  def output_age
    puts @age
  end
end
#-----------------------------------------------------------
# Now we create an instance from class Person1
# That expect two parameters (name and age)
jose = Person1.new('Jose', 29)

# We call the instance method output_name
jose.output_name # => Jose

# We call the instance method output_age
jose.output_age # => 29

# We can also create another instance
paco = Person1.new('Paco', 34)
paco.output_name # => Paco
paco.output_age # => 34


# Next step: Call directly the instance variable:

# Comment next line out:
# puts "I'm a instance variable: " + jose.name
# It can only works if you go to HINT 1 and comment it out
# but try what happend if you don't do this!
# The first hint you have a method calling 'attr_accessor'
# so you can access directly to the instance variable
# try it with 'paco.output_name'

# The same can you do it with the age! Try it too!

# We can change the instance variable by the way:
# Comment the next two lines out:

# jose.name = 'Pepe'
# puts "We change the name Jose to: " + jose.name

# Now try it with the ages... :)

# Here you learn how attr_accessor works!