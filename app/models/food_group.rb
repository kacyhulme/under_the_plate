class FoodGroup < ActiveRecord::Base
  has_many :distributors, through: :food_group_categorizations
  has_many :food_group_categorizations, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
