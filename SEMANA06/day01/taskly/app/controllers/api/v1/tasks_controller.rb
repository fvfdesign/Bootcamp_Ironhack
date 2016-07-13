class Api::V1::TasksController < ApplicationController

	before_action :user_exists #before action filter run before index, create etc
	before_action :task_exists, only: [:show, :destroy, :complete]

	def index
		completed_tasks = @user.tasks.where(completed: true)
		pending_tasks = @user.tasks.where(completed: false)

		render json: {completed: completed_tasks, pending:pending_tasks}
	end



	def create
	task = @user.tasks.create(task_params)# el user lleva user_id, por ello en el private no se coloca el user_id
		render json: task
	end
	


	def show
		render json: @task
	end


	def destroy
		@task.destroy
		render json: @task
	end


	def complete
		@task.complete! #metodo creado en el modelo
		render json: @task
	end




	private

	def task_params
		params.require(:task).permit(:name, :due_date) #:user_id) se ha creado ya a traves del usr, no hace falta el :user_id
	end

	def user_exists
		@user=User.find_by(id: params[:user_id])
		unless @user
			render json: {error: "no such user"}, status: 404
			return
		end
	end

	def task_exists
		@task=@user.tasks.find_by(id: params[:user_id])
		unless @task
			render json: {error: "task not found"}, status: 400
			return
		end
	end



end
