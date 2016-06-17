class ProgramingLanguage
    attr_accessor :name, :age, :type
    def initialize(name, age, type)
        @name = name
        @age = age
        @type = type
    end
end
​
​
ruby = ProgramingLanguage.new("Ruby", 21, "Dynamic")
python = ProgramingLanguage.new("Phyton", 24, "Dynamic")
javascript = ProgramingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgramingLanguage.new("Go", 6, "Static")
rust = ProgramingLanguage.new("Rust", 5, "Static")
swift = ProgramingLanguage.new("Swift", 2, "Static")
java = ProgramingLanguage.new("Java", 20, "Static")
​
array_of_languages = [ruby, python, javascript, go, rust, swift, java]
​
def array_printer(array)
    array.each do |language|
        puts "language: #{language.name} | the programing language aged one year are: #{language.age} | Type System: #{language.type}"
    end
end
​
#array_printer(array_of_languages)
​
aged_languages = array_of_languages.map do |language|
  language.age += 1
  language
end
​
#array_printer(aged_languages)
 
aged_list_lenguage = array_of_languages.sort_by do |language|
	language.age
end
​
​
#array_printer(aged_list_lenguage.reverse)
​
​
delete_java = aged_list_language.delete_if do |language|
	language.name.downcase == "java"
end
​
array_printer(aged_list_lenguage)
​
shuffle_languages = array_of_languages.shuffle do |language|
	language.name
end
​
∫array_printer(array_of_languages)
​
​