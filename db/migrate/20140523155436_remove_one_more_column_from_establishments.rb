class RemoveOneMoreColumnFromEstablishments < ActiveRecord::Migration
  def up
 		remove_column :establishments, :distributor_id
  end

  def down
  	add_column :establishments, :distributor_id, :integer
  end
end
