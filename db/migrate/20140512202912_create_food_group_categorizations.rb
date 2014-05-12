class CreateFoodGroupCategorizations < ActiveRecord::Migration
  def change
    create_table :food_group_categorizations do |t|
      t.references :distributor, index: true
      t.references :food_group, index: true

      t.timestamps
    end
  end
end
