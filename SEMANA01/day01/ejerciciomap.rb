
#MAP

cities = ["miami", "madrid", "barcelona"]

cities.map do |item|
	item.capitalize
end

cities = ["miami", "madrid", "barcelona"]
pretty_cities = cities.map {|city| city.capitalize}

#resultado + ["Miami", "Madrid", "Barcelona"]







