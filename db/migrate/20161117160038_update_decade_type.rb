class UpdateDecadeType < ActiveRecord::Migration[5.0]
  def change
    change_column :films, :decade, :string
  end
end
