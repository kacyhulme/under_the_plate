class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :addressable_type
      t.integer :addressable_id
      t.integer :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.string :zip
      t.integer :phone
      t.string :website

      t.timestamps
    end
  end
end
