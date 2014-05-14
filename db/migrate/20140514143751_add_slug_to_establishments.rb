class AddSlugToEstablishments < ActiveRecord::Migration
  def change
    add_column :establishments, :slug, :string
  end
end
