class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.references :address
      t.references :food_group 
      
      t.timestamps
    	end
    	add_index :distributors, :address_id
  end
end
