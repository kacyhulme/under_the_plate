class ChangePhoneColumnInEstablishmentsTable < ActiveRecord::Migration
  def up
  	remove_column :establishments, :phone
  	add_column :establishments, :phone, :string
  end

  def down
		add_column :establishments, :phone, :string
  	remove_column :establishments, :phone  
  end
end
