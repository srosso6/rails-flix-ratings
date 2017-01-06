class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :film_id
      t.string :type
      t.integer :rating_value

      t.timestamps
    end
  end
end
