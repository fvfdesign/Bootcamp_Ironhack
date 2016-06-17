  class Home
  attr_accessor(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end



class Homes
  
   def initialize(homes)
    @homes = homes
   end

   # def add_homes(homes)
   #  @homes = homes
   # end

  def get_order 
    puts "Select order method (capacity, price): "
    gets.chomp
  end

  #Ayuda Manu .........
  def sort 

    sort_method = get_order

    if sort_method == "capacity"
      sorted = @homes.sort {|x, y| x.capacity <=> y.capacity}
    elsif sort_method == "price"
      sorted = @homes.sort {|x, y| x.price <=> y.price}
    end

    sorted.each do |item|
      puts item.capacity
      puts item.price
      puts "============="
    end
  end

#Ayuda Manu ........


  def get_order_select
    puts "Insert the city you want to search houses in"
    gets.chomp
  end

  def select
    select_method = get_order_select

    # if select_method == "city"

    homes_by_city = @homes.select do |hm|
      hm.city == select_method
      
    end
    puts "#{hm.city}"
  end

end



homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Carlo's place", "Valencia", 3, 45),
  Home.new("Ana's place", "Madrid", 6, 49),
  Home.new("Paula's place", "Salamanca", 2, 40),
  Home.new("Juan's place", "Toledo", 3, 42),
  Home.new("Adolfo's place", "San Juan", 3, 48)
]


my_homes = Homes.new(homes)
#my_homes.add_homes(homes)
my_homes.sort
my_homes.select


def array_show(array)
  array.each do | hm |
    puts "#{hm.name} " + "in " + "#{hm.city} " + "Price " + "$" + "#{hm.price} " + "a night" + "capacity" + " #{hm.capacity}"

  end
end

array_show(homes)





# puts "Select order method (capacity, price): "
# sort_method = gets.chomp

# if sort_method == "capacity"
#   sorted = homes.sort {|x, y| x.capacity <=> y.capacity}
# elsif sort_method == "price"
#   sorted = homes.sort {|x, y| x.price <=> y.price}
# end

# sorted.each do |item|
#   puts item.capacity
#   puts item.price
#   puts "============="
# end








