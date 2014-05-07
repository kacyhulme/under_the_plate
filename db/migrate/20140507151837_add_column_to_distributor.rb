class AddColumnToDistributor < ActiveRecord::Migration
  def change
    add_column :distributors, :name, :string
  end
end
