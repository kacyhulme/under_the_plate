class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.references :address
      t.references :owner
      t.references :food_group 

      t.timestamps
    end
  end
end
