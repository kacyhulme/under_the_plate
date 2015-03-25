class Distributor < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :establishments, through: :distributions
  has_many :distributions
  has_many :addresses, as: :addressable
  has_many :food_groups, through: :food_group_categorizations
  has_many :food_group_categorizations, dependent: :destroy

  validates :name, presence: true

end
