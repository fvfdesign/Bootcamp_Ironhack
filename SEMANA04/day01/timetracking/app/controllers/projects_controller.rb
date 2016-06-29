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

	def new

		@projects = Project.new #(params[:name][:description])

	end

	def create
		@projects = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])

		@projects.save

			redirect_to ("/projects/#{@projects.id}")

	end
end