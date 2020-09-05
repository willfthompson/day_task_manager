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

  def done
    raise
    @task = Task.find(params[:id])
    @task.status = "done"
    @task.save
    redirect_to account_path

  end

private

  def task_params
    params.require("task").permit(:name)
  end
end






