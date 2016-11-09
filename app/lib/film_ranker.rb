class FilmRanker

  def rank_films
    top_films = get_top_films



  end

  def calc_overall_rating(film)
    rating_calc = RatingCalculator.new
    return rating_calc.overall_rating(film)
  end

  def get_top_films
    films = Film.all
    ratings = []
    for film in films
      rating = calc_overall_rating(film)
      ratings.push({film: film, rating: rating})
    end
    ratings.sort_by! {|rating| rating[:rating]}
    # if some movies have the same ratings, this won't work
    ratings.reverse!
    return ratings[1..18]
  end

  def save_film_ranking

  end

end
