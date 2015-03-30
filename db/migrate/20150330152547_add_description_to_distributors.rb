class AddDescriptionToDistributors < ActiveRecord::Migration
  def change
    add_column :distributors, :description, :text
  end
end
