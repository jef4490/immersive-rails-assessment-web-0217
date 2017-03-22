class RegistrationsController < ApplicationController

  def new
    @user = User.new()
  end

  def create
    byebug
    @user = User.new(registration_params)
    if !@user.save
      redirect_to new_session_path
    else
      session[:user_id] = user.id
      redirect_to guests_path
    end
  end

private

  def registration_params
    params.require(:user).permit(:username, :password)
  end

end
