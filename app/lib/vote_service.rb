class VoteService

def cast_vote()
  api = OmdbApi.new()
  if params["imdb_id"]
    @film = api.find_film_by_id(params["imdb_id"])
  else
    @film = api.find_film_by_title(params["film_name"], params["film_year"])
  end
end

end
