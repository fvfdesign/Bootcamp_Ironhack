class ProjectsController < ApplicationController


	def index

		@projects = Project.order(created_at: :desc).limit(10)
		
	end

	def show
		# id = params[id]
		@projects = Project.find_by(id: params[:id])
		
			unless @projects 
			render "no_projects_found"
			end
	end
end