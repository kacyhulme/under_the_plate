class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.references :address
      t.string :owner

      t.timestamps
    end
    add_index :establishments, :address_id
  end
end
