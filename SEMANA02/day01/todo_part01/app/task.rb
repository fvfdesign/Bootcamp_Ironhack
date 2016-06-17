class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
    end


end

class Todolist
	def initialize
		
	@tasks = []
	end

	def add_task(task)
		@tasks.push(task)
	end

	def complete
end


# 	def complete
# 		if task
# 		puts "task is complete"
# 		else
# 			nil
# 		end
# 	end

# task = Task.new("Buy the milk")
# puts task.id
# # 1
# task2 = Task.new("Wash the car")
# puts task2.id
# # 2