class ProgramingLenguage
	attr_accessor :name, :age, :type
	def initialize(name,age,type)
		@name = name
		@age = age
		@type = type
	end

	def array_printer(array)
	array.each do |item|
	puts "Lenguage: #{language.name} | Age: #{language.age} | Type System: #{language.type}"
	end

	def array_printer(array)
	array.each do |item|
	puts "Lenguage: #{language.name} | Age: #{language.age} | Type System: #{language.type}"
	end

end


# array_of_lenguages = ["Ruby", "Python", "JavaScript", "Go", "Rust", "Swift", "Java"]
array_of_lenguages = [Ruby, Python, JavaScript, Go, Rust, Swift, Java]

ruby = ProgramingLenguage.new("Ruby", 21, "Dynamic")
python = ProgramingLenguage.new("Python", 24, "Dynamic")
javascript = ProgramingLenguage.new("JavaScript", 20, "Dynamic")
go = ProgramingLenguage.new("Go", 6, "Static")
rust = ProgramingLenguage.new("Rust", 5, "Static")
swift = ProgramingLenguage.new("Swift", 2, "Static")
java = ProgramingLenguage.new("Java", 20, "Static")





