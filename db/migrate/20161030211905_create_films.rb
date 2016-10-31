class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :imdb_id
      t.string :title
      t.date :release_date
      t.string :genre
      t.string :description
      t.float :imdb_rating
      t.float :tomatoes_rating
      t.string :poster
      t.float :flix_rating
      t.integer :ranking

      t.timestamps
    end
  end
end
