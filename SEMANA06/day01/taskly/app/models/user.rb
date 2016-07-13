class User < ActiveRecord::Base

	has_many :tasks, dependent: :destroy 

	def as_json(options={})
		super(only: [:id, :name, :email],
		methods: [:task_count],
		include: [tasks: {only: [:id, :name]}] #[:tasks] todos los tasks

		)

	end

	def task_count
		self.tasks.count

	end
end




		#calling json from the parent/ ActiveREcord::Base.as_jason()

		#method= el resultado de un metodo en el modelo

		#include= users has many tasks (include its tasks) hace un array de todos los tasks

