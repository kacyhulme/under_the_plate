class RemoveColumnFromDistributors < ActiveRecord::Migration
  def change
  	remove_column :distributors, :owner_id 
  end
end

