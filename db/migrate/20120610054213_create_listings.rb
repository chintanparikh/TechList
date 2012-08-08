class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :content
      t.references :section

      t.timestamps
    end
    add_index :listings, :section_id
  end
end
