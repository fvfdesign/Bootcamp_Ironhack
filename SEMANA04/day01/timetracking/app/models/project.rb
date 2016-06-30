class Project < ActiveRecord::Base
	has_many :time_entries
end


	def self.clean_old

		date = Date.today - 1.week
		old_projects = Projects.where("create_at < ?", date)
		old_projects.destroy_all

		# Project.where("create_at<?", Date.today - 1 week).destroy_all 
		#(se puede poner o no el Project al principio)
		
	end
