class TimeEntriesController < ApplicationController

	def index

		@project = Project.find(params[:project_id]) 
		@entries = @project.time_entries

	end
	
	def new

		@project = Project.find(params[:project_id]) 
		@entry = @project.time_entries.new
	end	

	def create

		@project = Project.find(params[:project_id])
		@entry = @project.time_entries.new(entry_params)
		#@entry = @project.time_entries.new(params[:time_entry])

		# @entry = @project.time_entries.new( 
		# 	:date => params[:time_entry][:date],
		# 	:hours => params[:time_entry][:hours],
		# 	:minutes => params[:time_entry][:minutes],
		# 	:comments => params[:time_entry][:comments]
		# 	)



		@entry.save
		redirect_to "/projects/#{@project.id}/time_entries"
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.time_entries.find params[:id]
	end



	def update

		@project = Project.find params[:project_id]
		@entry = @project.time_entries.find_by(id: params[:id])



			if @entry.update(entry_params)
			# if @entry.update(params[:time_entry])

			# if @entry.update(hours: params[:time_entry][:hours],
			# 	minutes: params[:time_entry][:minutes],
			# 	date: params[:time_entry][:date])

			redirect_to action: "index", controller: "time_entries", 
			project_id: @project.id

			else

				render "edit"

			end

	end

	private

		def entry_params

		params.require(:time_entry).permit(:hours, :minutes, :date)
		end


		#find the project / find the entry / update the entry / redirect to the entries index
	
	
end

#/projects/:project_id/time_entries