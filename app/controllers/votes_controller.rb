class VotesController < ApplicationController

  def index
  end

  def vote
    vote_service = VoteService.new
    vote_service.manage_vote(params[:vote_type], params[:film_imdb_id], params[:user])
    redirect_to '/user_top_films'
  end

  def destroy
    vote = Vote.find_by(id: params[:id])
    vote_service = VoteService.new
    vote_service.manage_revoked_vote(vote)
    redirect_to '/user_top_films'
  end

end
