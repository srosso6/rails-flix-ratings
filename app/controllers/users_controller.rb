class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.new(params["user_id"])
  end

  def new
  end

  def create
    User.create([
      {
        username: params["user"]["username"],
        email_address: params["user"]["email_address"],
        password: params["user"]["password"],
        password_confirmation: params["user"]["password_confirmation"]
      }
    ])
    redirect_to '/user_top_films'
  end

  def vote

  end

end
