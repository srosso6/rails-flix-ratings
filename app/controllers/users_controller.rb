class UsersController < ApplicationController

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to flix ratings!"
      redirect_to '/user_top_films'
    else
      render 'new'
    end
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :email_address, :password, :password_confirmation)
    end

end
