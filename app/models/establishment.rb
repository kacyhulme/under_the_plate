class Establishment < ActiveRecord::Base
	has_many :owners, as: :ownerships
	has_many :addresses, as: :addressable
	has_many :distributors
	has_many :cuisine_categorizations
	has_many :cuisines, through: :cuisine_categorizations
	
	validates :name, presence: true
	validates :address_id, :owner_id, :distributor_id, presence: true, allow_blank: true

end
