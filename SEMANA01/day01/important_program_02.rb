puts "Hi there! What this program does is really important."

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

 	puts "What's your favorite food?"

 	favorite_food = gets.chomp

 	str = "pizza\n"

 	puts str.chomp