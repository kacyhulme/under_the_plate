class FoodGroupCategorization < ActiveRecord::Base
  belongs_to :distributor
  belongs_to :food_group
end
