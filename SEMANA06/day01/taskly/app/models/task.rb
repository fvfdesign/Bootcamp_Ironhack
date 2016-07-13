class Task < ActiveRecord::Base
	belongs_to :user


	def as_json (options={})
		super(except: [:user_id, :created_at, :updated_at])
	end

	def complete! #its going to change my object
		#cambiara el valor booleano de False to true

		self.completed = true #the object complete atribute

		self.save
	end

end
