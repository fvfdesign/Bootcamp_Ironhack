class Home
  attr_accessor(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]


   
def array_show(array)
  array.each do | hm |
    puts "#{hm.name} " + "in " + "#{hm.city} " + "Price " + "$" + "#{hm.price} " + "a night"

  end
end

array_show(homes)


cities = homes.map do |hm|
	hm.city
end

puts cities

# puts homes


#...........................................................


prices = homes.map do |hm|
	hm.price
end

puts prices




total_price = prices.reduce do |sum,hm|
	sum + hm
end

puts "The average price is:"
puts total_price / homes.length


# total_price = homes.reduce (0.0) do |sum,hm|
# 	sum + hm.price
# end

# puts "The average price is:"
# puts total_price / homes.length

#...........................................................


total_capacities = homes.reduce(0.0) do |sum,hm|
	sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length



#...........................................................


homes.each_with_index do|hm, index|
puts "Home Number #{index +1}: #{hm.name}"
end


#...........................................................


san_juan_homes = homes.select do |hm|
	hm.city == "San Juan"
end

san_juan_homes.each_with_index do|hm, index|
puts "Home Number #{index +1}: #{hm.name}"
end

# san_juan_homes.each do |hm|
# 	puts "#{hm.name}" + "#{hm.city}" 
# end


#...........................................................


high_capacity_homes = homes.select do |hm|
	hm.capacity >=4
end

high_capacity_homes. each do |hm|
	puts "#{hm.name}"
end

#...........................................................


home_49_dollars = homes.find do |hm|
	hm.price == 49
end

puts "The first home that costs $41 is:"
puts home_49_dollars.name





