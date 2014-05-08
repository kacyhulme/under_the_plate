class Establishment < ActiveRecord::Base
	has_many :owners, through: :ownerships
	has_many :addresses, as: :addressable
	has_many :distributors
	has_many :cuisines

	validates :name, :address_id, :owner_id, :distributor_id, :cuisine, presence: true

end
