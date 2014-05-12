class Distributor < ActiveRecord::Base
	belongs_to :establishment
	has_many :establishments
	has_many :addresses, as: :addressable
	has_many :food_groups, through: :food_group_categorizations
	has_many :food_group_categorizations, dependent: :destroy

	validates :name, :address_id, :owner_id, :food_group_id, presence: true
end