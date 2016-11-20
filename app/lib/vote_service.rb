 class VoteService

  def manage_vote(vote_type, imdb_id, user_id)
    film = get_film(imdb_id)
    if film
      vote = save_vote(vote_type, {user_id: user_id, film_id: film.id})
    else
      # TODO: something else if film hasn't been found
    end
    if vote
      update_ratings(film)
      update_ranks
    else
      # TODO: something if vote hasn't been saved
    end
  end

  def manage_revoked_vote(vote)
    film_id = vote.film_id
    Vote.delete(vote.id)
    film = Film.find_by(id: film_id)
    if film.votes.length == 0
      Film.delete(film.id)
    else
      update_ratings(film)
    end
  end

  def get_film(imdb_id)
    return Film.find_by(imdb_id: imdb_id) || save_film(imdb_id)
  end

  def save_film(imdb_id)
    api = OmdbApi.new
    film = api.find_film_by_id(imdb_id)
    film.save
    return film
  end

  def save_vote(vote_type, attributes)
    case vote_type
      when "GoldVote"
        vote = GoldVote.new(attributes)
      when "SilverVote"
        vote = SilverVote.new(attributes)
      when "BronzeVote"
        vote = BronzeVote.new(attributes)
      else
        # TODO: something if vote_type is not one of the three types
    end
    vote.save
  end

  def update_ratings(film)
    rating_calc = RatingCalculator.new
    film.update(flix_rating: rating_calc.flix_rating(film))
    film.update(combined_rating: rating_calc.combined_rating(film))
  end

  def update_ranks
    Film.update_all(ranking: nil)
    film_ranker = FilmRanker.new
    top_film_rankings = film_ranker.rank_films
    for film in top_film_rankings
      Film.update(film[:film_id], ranking: film[:ranking])
    end
  end

  def previous_vote_in_category?(vote_type, user_id, decade)
    user = User.find_by(id: user_id)
    if user.votes
      for vote in user.votes
        vote_film = Film.find_by(id: vote.film_id)
        if vote.type == vote_type && vote_film.decade == decade
          return vote
        else
          return nil
        end
      end
    end
  end

  def previous_vote_for_film?(imdb_id, user_id)
    user = User.find_by(id: user_id)
    film = get_film(imdb_id)
    if user.votes
      previous_vote = user.votes.select { |vote| vote.film_id == film.id }
    end
    return previous_vote[0]
  end

end
