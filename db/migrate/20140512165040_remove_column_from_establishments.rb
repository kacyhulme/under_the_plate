class RemoveColumnFromEstablishments < ActiveRecord::Migration
  def up
  	remove_column :establishments, :cuisine
  end

  def down
  	add_column :establishments, :cuisine
  end
end
