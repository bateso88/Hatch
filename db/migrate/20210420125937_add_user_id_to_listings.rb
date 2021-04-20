class AddUserIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :user_id, :integer
    add_index :listings, :user_id
  end
end
