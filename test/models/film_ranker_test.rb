require 'test_helper'

class FilmRankerTest < ActiveSupport::TestCase

  def setup
    @film_ranker = FilmRanker.new
  end

  test "return 18 films" do
    films = @film_ranker.get_top_films
    assert_equal films.length, 18
  end

  test "should save film ranking" do

  end

end
