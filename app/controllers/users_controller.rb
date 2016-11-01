class UsersController < ApplicationController

  def show
    @user = User.new(params["user_id"])
  end

  def vote
    vote_service = VoteService.new()
    vote_service.cast_vote()
    redirect_to '/user_top_films'
  end

end
