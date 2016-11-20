class RatingCalculator

  def flix_rating(film)
    score = 0
    count = 0
    for vote in film.votes
      score += vote.rating_value
      count += 1
    end
    return (score.to_f / count.to_f).round(2)
  end

  def combined_rating(film)
    if film.flix_rating == nil
      return nil
    else
      weighted_imdb_rating = film.imdb_rating / 4
      weighted_tomatoes_rating = film.tomatoes_rating / 4
      return ((weighted_tomatoes_rating + weighted_imdb_rating + film.flix_rating) / 3).round(2)
    end
  end

end
