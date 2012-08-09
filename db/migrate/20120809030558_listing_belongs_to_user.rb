class ListingBelongsToUser < ActiveRecord::Migration
  change_table :listings do |t|
    t.references :user
  end
  add_index :listings, :user_id
end
