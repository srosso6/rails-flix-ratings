class FilmsController < ApplicationController

  def find_film
    api = OmdbApi.new()
    if params["imdb_id"]
      @film = Film.find_by(imdb_id: params["imdb_id"]) || api.find_film_by_id(params["imdb_id"])
    else
      @film = api.find_film_by_title(params["film_name"], params["film_year"])
    end
    if @film
      if logged_in?
        @data = []
        votes = current_user.votes.select {|vote| vote.film.decade == @film.decade}
        votes_in_decade = {}
        for vote in votes
         votes_in_decade[vote.type] = vote.film
        end
        @data.push({decade: @film.decade, votes: votes_in_decade})
      end
    else
      flash[:danger] = 'The film you searched has not been found - please check your spelling and try searching again'
      redirect_to previous_page
    end
  end

  def top_films
    @data = []
    @films = Film.where(ranking: 1..3)
    ["60s", "70s", "80s", "90s", "00s", "10s"].each do |decade|
      top_films_in_decade = {}
      for film in @films
        puts film.decade
        if film.decade == decade
          top_films_in_decade[film.ranking] = film
        end
      end
      @data.push({decade: decade, top_films: top_films_in_decade})
    end
  end

  def user_top_films
    if logged_in?
      @data = []
      ["60s", "70s", "80s", "90s", "00s", "10s"].each do |decade|
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

end
