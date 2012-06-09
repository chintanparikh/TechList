class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.references :category

      t.timestamps
    end
    add_index :sections, :category_id
  end
end
