class AddIndexToUsernameAndEmail < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :username, unique: true
    add_index :users, :email_address, unique: true
  end
end
