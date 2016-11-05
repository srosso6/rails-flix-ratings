class VoteService

  def manage_vote(vote_type, imdb_id, user_id)
    film = Film.find_by(imdb_id: imdb_id) || save_film(imdb_id)
    if film
      case vote_type
        when "gold"
          vote = GoldVote.new({user_id: user_id, film_id: film.id})
        when "silver"
          vote = SilverVote.new({user_id: user_id, film_id: film.id})
        when "bronze"
          vote = BronzeVote.new({user_id: user_id, film_id: film.id})
        else
          # something if vote_type is not one of the three
      end
      # something else if film hasn't been found
    end
  end

  def save_film(imdb_id)
    api = OmdbApi.new
    film = Film.new(api.find_film_by_id(imdb_id))
    film.save
    return film
  end

  # def save_film
  #
  # end


  # t.integer  "user_id"
  # t.integer  "film_id"
  # t.string   "type"
  # t.integer  "rating_value"
end
