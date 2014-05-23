class DropOwnersTable < ActiveRecord::Migration
  def up
  	drop_table :owners
  end

  def down
    create_table :owners do |t|
      t.string :name
      t.string :company
      t.integer :ownership_id
      t.string :ownership_type
      t.references :address

      t.timestamps
    end
    add_index :owners, [:ownership_type, :ownership_id]
  end
end
