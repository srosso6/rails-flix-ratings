class FilmsController < ApplicationController

  def find_film
    api = OmdbApi.new()
    if params["imdb_id"]
      @film = Film.find_by(imdb_id: params["imdb_id"]) || api.find_film_by_id(params["imdb_id"])
    else
      @film = api.find_film_by_title(params["film_name"], params["film_year"])
    end
    @data = []
    votes = current_user.votes.select {|vote| vote.film.decade == @film.decade}
    votes_in_decade = {}
    for vote in votes
     votes_in_decade[vote.type] = vote.film
    end
    @data.push({decade: @film.decade, votes: votes_in_decade})
  end

  def top_films
    @data = []
    @films = Film.where(ranking: 1..3)
    [60, 70, 80, 90, 0, 10].each do |decade|
      top_films_in_decade = {}
      for film in @films
        if film.decade == decade
          top_films_in_decade[film.ranking] = film
        end
      end
      @data.push({decade: decade, top_films: top_films_in_decade})
    end
  end

  def user_top_films
    @data = []
    [60, 70, 80, 90, 0, 10].each do |decade|
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
