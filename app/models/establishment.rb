class Establishment < ActiveRecord::Base
	has_many :owners, through: :ownerships
	has_many :addresses, as: :addressable
	has_many :distributors
	has_many :cuisines
end
