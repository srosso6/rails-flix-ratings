class SessionsController < ApplicationController

  def index
    redirect_to '/sessions/new'
  end

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
       log_in user
       flash[:success] = "Welcome back!"
       redirect_to '/user_top_films'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to '/top_films'
  end
end
