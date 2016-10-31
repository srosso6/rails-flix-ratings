class UsersController < ApplicationController

  def show
    @user = User.new(params["user_id"])
  end

end
