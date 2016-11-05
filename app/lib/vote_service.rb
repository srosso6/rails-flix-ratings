class VoteService

  def manage_vote(vote_type, imdb_id, user_id)
    film = Film.find_by(imdb_id: imdb_id) || save_film(imdb_id)
    if film
      save_vote(vote_type, {user_id: user_id, film_id: film.id})
    else
      # something else if film hasn't been found?
    end
    film.votes
  end

  def save_film(imdb_id)
    api = OmdbApi.new
    film = Film.new(api.find_film_by_id(imdb_id))
    film.save
    return film
  end

  def save_vote(vote_type, attributes)
    case vote_type
      when "gold"
        vote = GoldVote.new(attributes)
      when "silver"
        vote = SilverVote.new(attributes)
      when "bronze"
        vote = BronzeVote.new(attributes)
      else
        # something if vote_type is not one of the three
    end
    vote.save
  end

  def get_film_votes(film_id)
    film.votes
  end

end
