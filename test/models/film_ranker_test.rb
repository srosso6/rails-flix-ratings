require 'test_helper'

class FilmRankerTest < ActiveSupport::TestCase

  def setup
    @film_ranker = FilmRanker.new
    @film_1 = Film.new(
      {
        id: 1,
        imdb_id: "tt1375666",
        title: "Inception",
        release_date: "16 Jul 2010",
        decade: 10,
        director: "Christopher Nolan",
        genre: "Action, Adventure, Sci-Fi",
        description: "A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.",
        imdb_rating: 8.8,
        tomatoes_rating: 8.1,
        poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg",
        flix_rating: 6.75,
        combined_rating: 7.88,
        ranking: nil
      }
    )
    @film_2 = Film.new(
      {
        id: 2,
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
        combined_rating: 7.7,
        ranking: nil
      }
    )
    @film_3 = Film.new(
      {
        id: 3,
        imdb_id: "tt0204946",
        title: "Bring It On",
        release_date: "25 Aug 2000",
        decade: 0,
        director: "Peyton Reed",
        genre: "Comedy, Sport",
        description: "A champion high school cheerleading squad discovers its previous captain stole all their best routines from an inner-city school and must scramble to compete at this year's championships.",
        imdb_rating: 5.9,
        tomatoes_rating: 5.9,
        poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BNjhiMjk1YWYtMjgyYy00YTFhLTk0NTMtN2Q5MDZjMWEyYWI1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
        flix_rating: 4.4,
        combined_rating: 5.4,
        ranking: nil
      }
    )
    @film_4 = Film.new(
      {
        id: 4,
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
        flix_rating: 7.67,
        combined_rating: 8.09,
        ranking: nil
      }
    )
    @film_5 = Film.new(
      {
        id: 5,
        imdb_id: "tt0338013",
        title: "Eternal Sunshine of the Spotless Mind",
        release_date: "19 Mar 2004",
        decade: 0,
        director: "Michel Gondry",
        genre: "Drama, Fantasy, Romance",
        description: "When their relationship turns sour, a couple undergoes a procedure to have each other erased from their memories. But it is only through the process of loss that they discover what they had to begin with.",
        imdb_rating: 8.3,
        tomatoes_rating: 8.4,
        poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg",
        flix_rating: 9.08,
        combined_rating: 8.59,
        ranking: nil
      }
    )

    @films = [@film_1, @film_2, @film_3, @film_4, @film_5]
    @films_long= ["film_1", "film_2", "film_3", "film_4", "film_5"]
    @films_short = ["film_1", "film_2"]

  end

  test "should group films by decade" do
    films_by_decade = @film_ranker.group_films_by_decade(@films)
    assert_equal({10 =>[@film_1], 60 =>[@film_2, @film_4], 0=>[@film_3, @film_5]}, films_by_decade)
  end

  test "should sort films by rating" do
    films_by_decade = @film_ranker.group_films_by_decade(@films)
    top_films = @film_ranker.get_top_3_films_by_combined_rating(films_by_decade)
    assert_equal({10 =>[@film_1], 60 =>[@film_4, @film_2], 0=>[@film_5, @film_3]}, top_films)
  end

  test "should create array with first three items" do
    top_films = @film_ranker.get_top_3_films(@films_long)
    assert_equal ["film_1", "film_2", "film_3"] , top_films
  end

  test "should create array with same number of items" do
    top_films = @film_ranker.get_top_3_films(@films_short)
    assert_equal ["film_1", "film_2"] , top_films
  end

  test "should save film ranking" do
    films_by_decade = @film_ranker.group_films_by_decade(@films)
    top_films = @film_ranker.get_top_3_films_by_combined_rating(films_by_decade)
    top_film_rankings = @film_ranker.save_film_ranking(top_films)
    assert_equal [
      {film_id: 4 , ranking: 1},
      {film_id: 2 , ranking: 2},
      {film_id: 5 , ranking: 1},
      {film_id: 3 , ranking: 2},
      {film_id: 1 , ranking: 1}
    ], top_film_rankings
  end

end
