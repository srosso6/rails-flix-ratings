class RatingCalculator

  def flix_rating(film)
    score = 0
    count = 0
    for vote in film.votes
      score += vote.rating_value
      count += 1
    end
    flix_rating = (score.to_f / count.to_f).round(2)
    puts flix_rating
    return relative(flix_rating)
  end

  def relative(flix_rating)
    return flix_rating * 2
  end

  def combined_rating(film)
    puts film.flix_rating
    if film.flix_rating == nil
      return nil
    else
      return ((film.tomatoes_rating + film.imdb_rating + film.flix_rating) / 3).round(2)
    end
  end

end
