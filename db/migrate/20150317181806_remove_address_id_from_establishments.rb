class RemoveAddressIdFromEstablishments < ActiveRecord::Migration
  def change
    remove_column :establishments, :address_id, :integer
  end
end
