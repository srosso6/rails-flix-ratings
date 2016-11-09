class FilmsController < ApplicationController

  def find_film
    api = OmdbApi.new()
    if params["imdb_id"]
      @film = Film.find_by(imdb_id: params["imdb_id"]) || api.find_film_by_id(params["imdb_id"])
    else
      @film = api.find_film_by_title(params["film_name"], params["film_year"])
    end
  end

  def top_films
    @films = Film.all # get films with ranking of 1 - 3 in each decade (sort in FilmRanker?)
  end

  def user_top_films
    decades = [60, 70, 80, 90, 0, 10]
    @data = []
    for decade in decades
       votes = current_user.votes.select {|vote| vote.film.decade == decade}
       votes_in_decade = {}
       for vote in votes
         votes_in_decade[vote.type] = vote.film
         votes_in_decade[vote.type + "id"] = vote.id
       end
       @data.push({decade: decade, votes: votes_in_decade})
    end
  end

end
