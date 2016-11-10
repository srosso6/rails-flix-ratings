class AddColumnToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :combined_rating, :float
  end
end
