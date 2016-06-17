
#REDUCE

total = [1,2,3]
total.reduce do |sum,item|
	sum + item
end


total = [1,2,3].reduce {|sum,x| sum + x}


#resultado = 6

[1].reduce{|sum,x| sum + x} #// resultado = 1

[].reduce{|sum,x| sum + x} #// resultado = nil

[1,2,3].reduce(1){|sum,x| sum + x} #// resultado = 6

[].reduce(5){|sum,x| sum + x} #// resultado = 6


#EJERCICIO

cities = ["miami", "madrid", "barcelona"]

cities.reduce(0) {|sum,item| sum + item.length}

cities.reduce(0) do |sum, item|
	sum + item.length
end


total_length = cities.reduce(0)do |sum,item|
sum + item.length
end

puts total_length / cities.length


