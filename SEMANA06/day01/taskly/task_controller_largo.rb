# class Api::V1::TasksController < ApplicationController


# 	def index
# 		user = User.find_by(id: params[:user_id])
# 		unless user
# 			render json: {error: "no such user"}, status: 404
# 			return
# 		end
# 		tasks = user.tasks 
# 		render json: tasks
# 	end



# 	def create
# 		user = User.find_by(id: params[:user_id])
# 		unless user
# 			render json: {error: "no such user"}, status: 404
# 			return
# 		end
# 		task = user.tasks.create(task_params)# el user lleva user_id, por ello en el private no se coloca el user_id
# 		render json: task
# 	end
	


# 	def show
# 		user = User.find_by(id: params[:user_id])
# 		unless user
# 			render json: {error: "no such user"}, status: 404
# 			return
# 		end
# 		task = user.tasks.find_by(id: params[:id]) 
# 		unless task
# 			render json: {error: "task not found"}, status: 404
# 		return
# 		end
# 		render json: task
# 	end


# 	def destroy
# 		user = User.find_by(id: params[:user_id])
# 		unless user
# 			render json: {error: "no such user"}, status: 404
# 			return
# 		end
# 		task = user.tasks.find_by(id: params[:id]) 
# 		unless task
# 			render json: {error: "task not found"}, status: 404
# 		return
# 		end
# 		task.destroy
# 		render json: task
# 	end


# 	private

# 	def task_params
# 		params.require(:task).permit(:name, :due_date) #:user_id) se ha creado ya a traves del usr, no hace falta el :user_id
# 	end



# end