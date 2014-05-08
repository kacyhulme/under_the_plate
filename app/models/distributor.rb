class Distributor < ActiveRecord::Base
	belongs_to :establishment
	has_many :establishments
	has_many :addresses, as: :addressable

	validates :name, :address_id, :owner_id, :food_group_id, presence: true
end