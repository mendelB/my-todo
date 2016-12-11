class UserTasksController < ApplicationController

  def create
    current_user.user_tasks.create(user_task_params)
    redirect_to root_path
  end

  def update
    task = UserTask.find(params[:id])
    task.update(complete: !task.complete)
    head :ok
  end

  private
  def user_task_params
    params.require(:user_task).permit(:task_id)
  end
end
