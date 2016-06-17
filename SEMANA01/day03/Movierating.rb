# EJERCICIO CON TRISTÁN (RESUELTO EN CONJUNTO, 80% POR ÉL)

require 'imdb'

class Main
 def initialize
     @mov_array = []
     @rat_array= []
 end

    def read_file
        list = IO.read("movies.txt")
        @mov_array = list.split("\n")
        get_ratings
    end

    def get_ratings
        @mov_array.each do |mov|
             var = Imdb::Search.new(mov)
             el = var.movies[1]
             @rat_array.push(el.rating)
        end
        print_ratings
    end

    def print_ratings
        i= 0
        @mov_array.each do |mov|
            puts mov + " = #{@rat_array[i]}"
            i += 1
        end
    end

end


a = Main.new
a.read_file