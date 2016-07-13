class TasksController < ApplicationController
#before_action :handel_loggin, only: [:index]
before_action :is_signed_in? #only: [:index]
before_action :is_owner, only: [:edit, :show, :update, :destroy]

  # GET /tasks
  def index

    #current_use.task #(all the task of he current_user)
    @task =current_user.tasks
    @tasks = Task.all


  end

  # GET /tasks/1
  def show
    #@task = Task.find(params[:id])Hemos puesto en el private "is_owner"
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    #@task = Task.find(params[:id]) Hemos puesto en el private "is_owner"
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    #@task = Task.find(params[:id])Hemos puesto en el private "is_owner"
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :due_date, :completed, :user_id)
    end

    # def handel_loggin (Rei)

    # redirect_to '/login' unless logged_in?
        
    # end

    def is_signed_in?
      unless logged_in?
         redirect_to login_path, notice: "Access Forbbiden"
      end
    end

    def is_owner
      @task = Task.find(params[:id])
      @user = @task.user
      unless current_user.id == @user.id
        redirect_to task_path, notice "Access forbidden"
      end

    end


end
