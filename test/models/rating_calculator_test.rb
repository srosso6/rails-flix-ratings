require 'test_helper'

class RatingCalculatorTest < ActiveSupport::TestCase

  def setup
    @rating_calc = RatingCalculator.new
    @film_1 = Film.new(
      {
        imdb_id: "tt0059742",
        title: "The Sound of Music",
        release_date: "29 Mar 1965",
        decade: 60,
        director: "Robert Wise",
        genre: "Biography, Drama, Family",
        description: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.",
        imdb_rating: 8.0,
        tomatoes_rating: 8.0,
        poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGYyZjk4MDMtYTZmMS00YWM2LTgxNDQtM2EwNzQ2MDZhNWQxXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg",
        flix_rating: 7.09,
        combined_rating: nil,
        ranking: nil
      }
    )
    @film_2 = Film.new(
      {
        imdb_id: "tt0058331",
        title: "Mary Poppins",
        release_date: "11 Sep 1964",
        decade: 60,
        director: "Robert Stevenson",
        genre: "Comedy, Family, Fantasy",
        description: "A magic nanny comes to work for a cold banker's unhappy family.",
        imdb_rating: 8.3,
        tomatoes_rating: 8.3,
        poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1MDQwNTM3Ml5BMl5BanBnXkFtZTgwNzA3ODg3MDE@._V1_SX300.jpg",
        flix_rating: nil,
        combined_rating: nil,
        ranking: nil
      }
    )
  end

  test "should calculate combined film rating" do
    rating = @rating_calc.combined_rating(@film_1)
    assert_equal 7.7, rating
  end

  test "should not calculate combined film rating" do
    rating = @rating_calc.combined_rating(@film_2)
    assert_equal nil, rating
  end

end
