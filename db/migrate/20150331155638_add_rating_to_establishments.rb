class AddRatingToEstablishments < ActiveRecord::Migration
  def change
    add_column :establishments, :rating, :string
  end
end
