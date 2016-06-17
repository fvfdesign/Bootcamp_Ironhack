# class StringAdder
# 	def self.add(str)
# 	str.split(",").map{|i| i.to_i}.sum
# 	end
# end


# class StringAdder
# 	def self.add(str)
# 	str.split(",").map{|i| i.to_i}.inject(:+) #no usar inject nunca
# 	end
# end

#class Sorter < Struct.new(:list)


class StringAdder
	def self.add(str)
	str.split("\n").map{|i| i.to_i}.inject(:+) #no usar inject nunca
	end
end