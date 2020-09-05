class AccountController < ApplicationController
  def show
    @user = current_user
    @task = Task.new
  end
end
