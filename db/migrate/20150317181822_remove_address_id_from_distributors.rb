class RemoveAddressIdFromDistributors < ActiveRecord::Migration
  def change
    remove_column :distributors, :address_id, :integer
  end
end
