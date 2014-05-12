class CreateCuisineCategorizations < ActiveRecord::Migration
  def change
    create_table :cuisine_categorizations do |t|
      t.references :establishment, index: true
      t.references :cuisine, index: true

      t.timestamps
    end
  end
end
