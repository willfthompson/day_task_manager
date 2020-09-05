class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.status = "undone"
    if @task.save
      redirect_to account_path
      flash[:notice] = "Task added"
    else
      flash[:notice] = "ERROR"
      render :new
    end
  end

private

  def task_params
    params.require("task").permit(:name)
  end
end






