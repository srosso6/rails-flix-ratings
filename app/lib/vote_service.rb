class VoteService

  def manage_vote(vote_type, imdb_id, user_id)
    #should not be allowed to vote twice in same category
    film = get_film(imdb_id)
    if film
      vote = save_vote(vote_type, {user_id: user_id, film_id: film.id})
    else
      # something else if film hasn't been found?
    end
    if vote
      update_flix_rating(film)
      update_ranks()
    else
      #something if vote hasn't been saved
    end
  end

  def manage_revoked_vote(vote)
    film_id = vote.film_id
    Vote.delete(vote.id)
    film = Film.find_by(id: film_id)
    if film.votes.length == 0
      Film.delete(film.id)
    else
      update_flix_rating(film)
    end
  end

  def get_film(imdb_id)
    return Film.find_by(imdb_id: imdb_id) || save_film(imdb_id)
  end

  def save_film
    api = OmdbApi.new
    film = Film.new(api.find_film_by_id(imdb_id))
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
        # something if vote_type is not one of the three
    end
    vote.save
  end

  def get_new_flix_rating(film)
    rating_calc = RatingCalculator.new
    return rating_calc.flix_rating(film)
  end

  def update_flix_rating(film)
    Film.update(film.id, flix_rating: get_new_flix_rating(film))
  end

  def update_ranks(film)
    film_ranker = FilmRanker.new
    return film_ranker.rank_films
  end

end
