require 'date'

class OmdbApi

  include HTTParty

  API_URL = "http://www.omdbapi.com/?tomatoes=true&"

  def create_film(film_info)
    return {
      imdb_id: film_info["imdbID"],
      title: film_info["Title"],
      release_date: film_info["Released"],
      decade: find_decade(film_info["Released"]),
      director: film_info["Director"],
      genre: film_info["Genre"],
      description: film_info["Plot"],
      imdb_rating: film_info["imdbRating"],
      tomatoes_rating: film_info["tomatoRating"],
      poster: film_info["Poster"],
      flix_rating: nil,
      ranking: nil
    }
  end

  def find_decade(release_date)
    date = Date.parse(release_date)
    decade = date.year.to_s.slice(2) + "0s"
    return decade
  end

  def find_film_by_title(film_title, *year)
    if year[0] == nil
      response = self.class.get(API_URL + "t=" + film_title)
    else
      response = self.class.get(API_URL + "y=" + year[0] + "&t=" + film_title)
    end
    if response.success?
      film_info = JSON.parse(response.body)
      return create_film(film_info)
    else
      raise response.response
    end
  end

  def find_film_by_id(imdb_id)
    response = self.class.get(API_URL + "i=" + imdb_id)
    if response.success?
      film_info = JSON.parse(response.body)
      return create_film(film_info)
    else
      raise response.response
    end
  end

end
