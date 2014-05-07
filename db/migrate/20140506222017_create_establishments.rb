class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.references :address
      t.references :owner
      t.references :distributor
      t.string :cuisine

      t.timestamps
    end
    add_index :establishments, :address_id
    add_index :establishments, :owner_id
    add_index :establishments, :distributor_id    
  end
end
