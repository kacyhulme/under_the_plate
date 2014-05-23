class RemoveDistributorsEstablishmentsTable < ActiveRecord::Migration
  def up
  	drop_table :distributors_establishments
  end

  def down
  	create_table :distributors_establishments do |t|
  		t.integer :distributor_id
  		t.integer :establishment_id

  		t.timestamps
  	end
  	add_index :distributors_establishments, :distributor_id
  	add_index :distributors_establishments, :establishment_id
  end
end

