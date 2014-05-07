class Distributor < ActiveRecord::Base
	belongs_to :establishment
	has_many :establishments
	has_many :addresses, as: :addressable
end
