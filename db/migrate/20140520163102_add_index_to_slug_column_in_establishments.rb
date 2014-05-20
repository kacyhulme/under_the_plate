class AddIndexToSlugColumnInEstablishments < ActiveRecord::Migration
  def change
  	add_index :establishments, :slug
  end
end
