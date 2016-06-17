#ARRAY

sweets = ["cookies", "ice cream", "pie", "creme bruless"]
sweets << "Reese's Minis"
sweets.push("Heath bar")


#..................................................

#HASH

 pizza = {:cheese =>"Mozarella", :sauce => "Marinara"}
 puts pizza[:sauce]

 the_godfather_translations = {
 	:english => "The Godfather",
 	:spanish => "EL padrino",
 	:italian => "Il Padrino",
 	:esperanto => "La Baptopatro",
 	:german => "Der Pate"}

 	the_godfather_translations [:esperanto]
 	the_godfather_translations [:english]
 	the_godfather_translations [:german]

 	 the_godfather_translations = {
 	english: "The Godfather",
 	spanish: "EL padrino",
 	italian: "Il Padrino",
 	esperanto: "La Baptopatro",
 	german: "Der Pate"}

 	the_godfather_translations [:esperanto]
 	the_godfather_translations [:english]
 	the_godfather_translations [:german]



#..................................................


#IF, ELSIF, ELSE

 	favorite_food = "pizza"

 	if favorite_food == "pizza"
 		puts "Pizza is amazing"
 	elsif favorite_food == "hot dogs"
 		puts "Hot dogs taste good"
 	elsif favorite_food == "chili"
 		puts "Chili can be dangerous"
 	else 
 		puts "Uh....#{favorite_food} can be okay. I guess"
 	end


#..................................................

#GETS CHOMP

 	puts "What's your favorite food?"

 	favorite_food = gets.chomp

 	str = "pizza\n"

 	puts str.chomp


#..................................................


 #IO READ / IO WRITE

 	IO.read("menu.txt")
 	puts menu

 	IO.write("menu.txt", "PIZZA")

#..................................................


 #EACH DO ( ARRAY & HASH)

 	["carrots","apples","oranges"].each do |item| 
 		puts item 
 	end
{name: "Jhon", surname: "Doe"}.each do |key, value|
	puts "#{key} -> #{value}"
end




classmates.each do |mate|
	puts "Good Morning," + mate
end

#..................................................

# EACH Do
total = []

[1,2,3].each do |item|
	total.push(item+1)
end

total


#..................................................


#MAP


added_one = [1,2,3].map do|item|  
	item + 1
end

#resultado = [2, 3, 4]

#..................................................


#EACH WITH INDEX

i = 0
["a","b","c"].each do |item|
	puts "[#{i}] #{item}"
	i += 1
end

# #resultado = 
# [0] a
# [1] b
# [2] c
# => ["a", "b", "c"]

i = 0
["a","b","c"].each_with_index {|item,i| puts "[#{i}] #{item}"}
#["a","b","c"].each_with_index {|item,i| puts "[#{i}] #{item}" i+=1}

# [0] a
# [1] b
# [2] c
# => ["a", "b", "c"]


#..................................................


#SELECT

[5,2,3].select {|x| x.odd?}

[5,2,3].select {|item| item.odd?}

#resultado = [5, 3]

#..................................................

#GREP

["casa", "masa", "pepino"].grep(/as/)

#resultado = ["casa", "masa"]

#..................................................

#FIND

[5,2,3].find {|x| x.odd?}

#resultado = 5


#..................................................

#SORT

[1,2,3].sort

["carrots","apples","oranges"].sort_by {|item| item.size

#resultado = [1, 2, 3]

# ["banana", "rice", "anchovies"].sort_by {|i|} i.downcase} MAL


(1..10).sort {|a,b|b<=>a}

 		




