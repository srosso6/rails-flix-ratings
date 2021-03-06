class FilmRanker

  def rank_films
    films = Film.all
    films_by_decade = group_films_by_decade(films)
    top_films = get_top_3_films_by_combined_rating(films_by_decade)
    save_film_ranking(top_films)
  end

  def group_films_by_decade(films)
    # decade_lookup = {60 => 1, 70 => 2, 80 => 3, 90 => 4, 0 => 5, 10 => 6}
    # films.sort_by! {|film| decade_lookup.fetch(film.decade)}
    return films.group_by {|film| film.decade}
  end

  def get_top_3_films_by_combined_rating(films_by_decade)
    ["60s", "70s", "80s", "90s", "00s", "10s"].each do |decade|
      if films_by_decade[decade]
        films_by_decade[decade].sort_by! {|film| film.combined_rating}
        films_by_decade[decade].reverse!
        films_by_decade[decade] = get_top_3_films(films_by_decade[decade])
      end
      # TODO: something if some movies have the same rating
    end
    return films_by_decade
  end

  def get_top_3_films(films)
    if films.length > 3
      return films.first(3)
    else
      return films.first(films.length)
    end
  end

  def save_film_ranking(top_films)
    top_film_rankings = []
    ["60s", "70s", "80s", "90s", "00s", "10s"].each do |decade|
      if top_films[decade]
        i = 1
        while i < top_films[decade].length + 1
          top_film_rankings.push({film_id: top_films[decade][i-1].id, ranking: i})
          i += 1
        end
      end
    end
    return top_film_rankings
  end

end
