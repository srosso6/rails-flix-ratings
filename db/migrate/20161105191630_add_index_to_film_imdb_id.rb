class AddIndexToFilmImdbId < ActiveRecord::Migration[5.0]
  def change
    add_index :films, :imdb_id, unique: true
  end
end
