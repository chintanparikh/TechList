class CreateRoles < ActiveRecord::Migration
  def up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    change_table :users do |t|
      t.references :role
    end
    add_index :users, :role_id
    add_index :roles, :name
  end

  def down
    drop_table :roles
    remove_column :users, :role_id
  end
end
