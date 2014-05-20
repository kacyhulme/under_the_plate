class AddIndexToSlugColumnInDistributors < ActiveRecord::Migration
  def change
  	add_index :distributors, :slug
  end
end
