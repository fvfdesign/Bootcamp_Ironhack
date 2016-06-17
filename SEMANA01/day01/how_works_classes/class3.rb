# Please read first the comments and then try the examples

# We create again a class Person :))
# In this example we works with the famouse:
# CLASS METHOD!!!
class Person3
  # Hint 2 # Comment it later out
  # attr_accessor :name, :age

  # We don't need the initializer (constructor)

  # We create a class method without parameters
  # that print simply the value "I'm a class method"

  # comment next class method if you go to try HINT 1
  # HINT 1 #
  def self.output_name
    puts "My name is: Class method"
  end

  # Hint 1 #
  # Comment it later out
  # def self.output_name(i_am_a_parameter)
  #  puts "My name is: " + i_am_a_parameter
  # end

  # And here it's a instance method
  def output_age(i_am_a_parameter)
    puts (i_am_a_parameter)
  end
end
#-----------------------------------------------------------

# To call a class method you don't need to create an instance
# You now to create an instance you create it with the
# ".new" method
# So, let's try it out:

# comment this later if you go to HINT 1
# HINT 1 #
Person3.output_name
# What's the output?

# Exactly: => "My name is: Class method"

# Can we call now a instance method? Yeah?
jose = Person3.new
jose.output_age(29)
# => 29
# For sure! We pass the age to the instance method

# So, but we have a "static" class method output that
# every time we call it that give us the output
# "My name is: Class method"
# But we want change it to:
# "My name is: Jose"

# HINT 1 #
# comment first the class method HINT 1 and
# where we create the Person3.new

# Now comment HINT 1 out where
# is the class method with one parameters
# self.output_name(i_am_a_parameter)........

# So, now we call a class method
# you see that we pass now a value to the parameter
# Comment next line out
# HINT 1 #
# Person3.output_name('Jose')

# What's the output now??

# Yup!! You got it!!
# => My name is: Jose

# Thats all!! You create at the same time an instance method
# and a class method with and without parameter!!

# Can you try it out now to create instance varaiables?

# I give you an example:

# copy the next two line and put it to the class method
# @name = i_am_a_parameter
# puts "My name is: " + @name

# Your job is now to try all out what we
# learn in the first to class examples..

# You see # HINT 2 # ??

# It's important to understand how the instance variables,
# instance method and class methods works
# and how you can change the instance variables by the way
# with the help of the "attr_accessor"  method

# So, please:
# Try everything out! EVERYTHING!

# Good luck!
