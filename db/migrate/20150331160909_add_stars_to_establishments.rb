class AddStarsToEstablishments < ActiveRecord::Migration
  def change
    add_column :establishments, :stars, :integer
  end
end
