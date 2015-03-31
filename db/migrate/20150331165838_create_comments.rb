class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :stars
      t.text :text
      t.references :user, index: true
      t.references :establishment, index: true

      t.timestamps
    end
  end
end
