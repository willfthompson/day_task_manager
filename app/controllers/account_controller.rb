class AccountController < ApplicationController
  def show
    @user = current_user
    @task = Task.new
    @user.note = Note.new if !@user.note
  end
end
