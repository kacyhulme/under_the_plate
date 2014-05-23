class RemoveAnotherColumnFromEstablishments < ActiveRecord::Migration
  def change
  	remove_column :establishments, :owner_id
  	add_column :establishments, :owner, :string
  end

  def down
		add_column :establishments, :owner_id, :integer
  	remove_column :establishments, :owner  
  end
end
