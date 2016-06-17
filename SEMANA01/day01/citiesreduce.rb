cities = ["miami", "madrid", "barcelona"]

sum = cities.reduce(0.0) {|sum, city| sum + city.length}

puts average
puts sum / cities.length
# dos ceros para dejarlo fluir y que no se atasque

sum = cities.reduce (0.0) do |sum, city|
	sum + city.length
end

puts sum / cities.length


# ESTO NO FUNCIONARIA:

# # cities = ["miami", "madrid", "barcelona"]

# # average = cities.reduce {|sum, city| sum.length + city.length}

# # puts average
