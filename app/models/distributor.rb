class Distributor < ActiveRecord::Base
	
	before_validation :generate_slug
	
	belongs_to :establishment
	has_many :establishments
	has_many :addresses, as: :addressable
	has_many :food_groups, through: :food_group_categorizations
	has_many :food_group_categorizations, dependent: :destroy

	validates :name, :address_id, :owner_id, :food_group_id, presence: true

	def generate_slug
	  self.slug ||= self.name.parameterize if name
	end

	def to_param
	  slug
	end
end