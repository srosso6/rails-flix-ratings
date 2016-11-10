class FilmRanker

  def rank_films
    films_by_decade = sort_films_by_decade
    # top_films = get_top_films(films_with_rating)
    # save_film_ranking(top_films)

  end

  # def get_films_with_rating
  #   films = Film.all
  #   # films_with_rating = []
  #   for film in films
  #     rating = calc_combined_rating(film)
  #     if rating
  #       films_with_rating.push({film: film, rating: rating})
  #     end
  #   end
  #   return films_with_rating
  # end

  def sort_films_by_decade
    films = Film.all
    decade_lookup = {60 => 1, 70 => 2, 80 => 3, 90 => 4, 0 => 5, 10 => 6}
    return films.sort_by! {|film| decade_lookup.fetch(film[:film].decade)}
  end

  # def sort_films_by_combined_rating()
  #   films_by_decade.sort_by! {|film| film[:rating]}
  #   return films_by_decade.reverse!
  #   # if some movies have the same ratings, this won't work
  # end

  # def get_top_films_of_decade(films)
  #   return films_by_decade[1..3]
  # end

  # def get_top_films(films_with_rating)
  #   decade_lookup = {60 => 1, 70 => 2, 80 => 3, 90 => 4, 0 => 5, 10 => 6}
  #   films_by_decade = films_with_rating.sort_by! {|film| decade_lookup.fetch(film[:film].decade)}
  #   films_by_decade.sort_by! {|film| film[:rating]}
  #   # if some movies have the same ratings, this won't work
  #   films_by_decade.reverse!
  #   return films_by_decade[1..18]
  # end

  # def save_film_ranking(top_films)
  #   i = 1
  #   while i < top_films.length + 1
  #     film.update(film.id, ranking: i)
  #   end
  # end

end
