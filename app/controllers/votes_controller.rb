class VotesController < ApplicationController

  before_action :vote_or_redirect

  def index
  end

  def vote
    vote_service = VoteService.new
    vote_service.manage_vote(params[:vote_type], params[:film_imdb_id], current_user.id)
    # pass in user id here (not as param from the view) - ensures only user themselves can cast their own votes
    redirect_to '/user_top_films'
  end

  def destroy
    vote = Vote.find_by(id: params[:id])
    vote_service = VoteService.new
    vote_service.manage_revoked_vote(vote)
    redirect_to '/user_top_films'
  end

  private
  def vote_or_redirect
    if !logged_in?
      flash.now[:danger] = 'You must be logged in to vote.'
      render '/sessions/new'
    end
  end
end
