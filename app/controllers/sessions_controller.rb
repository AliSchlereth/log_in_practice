class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "You are successfully logged in as #{user.first_name}."
      redirect_to user_path(user)
    else
      render :new
    end
  end

end
