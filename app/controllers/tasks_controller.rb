class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.status = false
    if @task.save
      redirect_to account_path(current_user)
      flash[:notice] = "Task added"
    else
      flash[:notice] = "ERROR"
      render :new
    end
  end

  def done
    @task = Task.find(params[:format])
    @task.toggle(:status)
    @task.save!
    redirect_to account_path(current_user)
  end

private

  def task_params
    params.require("task").permit(:name)
  end
end






