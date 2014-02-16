class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), :notice => "Welcome #{@user.name}"
    else
      render "new"
    end
  end

  def show
    @user = current_user
    @user_patients = @user.patients
  end
end
