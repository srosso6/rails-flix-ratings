class FilmsController < ApplicationController

  def find_film
    api = OmdbApi.new()
    if params["imdb_id"]
      puts "get here"
      @film = api.find_film_by_id(params["imdb_id"])
    else
      @film = api.find_film_by_title(params["film_name"], params["film_year"])
    end
  end

  def top_films
    @films = Film.all
    # get films with ranking of 1 - 3 in each decade (sort in FilmRanker?)
  end

  def user_top_films
    # user =
    # votes = user.votes
    # @films = get all the films from the votes
  end

end
