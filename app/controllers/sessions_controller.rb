class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user 
      log_in user 
      redirect_to user 
    else
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to login_path
  end
end
