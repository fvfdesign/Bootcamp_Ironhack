# Please read first the comments and then try the examples

# We create again a class Person :))
class Person2
  # Hint 1 # Comment it later out
  attr_accessor :name, :age

  # But in this once we don't need the initializer (constructor)

  # We creat a method with one parameter
  # that print simply the value from the parameter
  def output_name(i_am_a_parameter)
    # comment next line if you go to try HINT 2
    puts i_am_a_parameter

    # Hint 2 # Comment it later out
    # @name = i_am_a_parameter
    # puts @name
  end
  # The same here: we provide a method that simply prints
  # the value from the parameter
  def output_age(i_am_a_parameter)
    puts (i_am_a_parameter)
  end
end
#-----------------------------------------------------------
# So, now we create an instance from class Person2
# That DON't expect any parameters!!
jose = Person2.new

# We call the instance method output_name
# and pass a value, in this case the name
jose.output_name('Jose') # => Jose

# And here we pass the age for Jose
jose.output_age(29) # => 29

# We can also create another instance
paco = Person2.new
paco.output_name('Paco') # => Paco
paco.output_age(34) # => 34


# Next we try out to call directly the instance variable:

# Comment next line out:
# puts "I'm a instance variable: " + jose.name
# Works?

# No? Then go to HINT 1 and comment it out

# Works now?

# Nop..and why?
# Because we have any instance variable created!! :)

# How we can make an instance variable?
# Comment HINT 2 out
# and dont forget to comment the first "puts i_am_a_parameter"

# Works now?

# Yeaaahhh

# Now try out what we learn in the first class Person1

# Try to pass a new name and ages with Jose und Paco
# Dont forget to create an instance variable
# to the method output_age

# Here you learn again how attr_accessor works!
# And we don't need to make an constructor to pass values to the methods