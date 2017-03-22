class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to guests_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to guests_path
  end

end
