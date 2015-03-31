class RemoveRatingFromEstablishment < ActiveRecord::Migration
  def change
    remove_column :establishments, :rating, :string
  end
end
