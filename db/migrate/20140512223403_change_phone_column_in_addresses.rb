class ChangePhoneColumnInAddresses < ActiveRecord::Migration
  def up
  	remove_column :addresses, :phone
  	add_column :addresses, :phone, :string
  end

  def down
		add_column :addresses, :phone, :string
  	remove_column :addresses, :phone  
  end
end
