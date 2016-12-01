class TasksController < ApplicationController
  before_action :authenticate_user!

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

  private
  def task_params
    params.require(:task).permit(:title)
  end
end
