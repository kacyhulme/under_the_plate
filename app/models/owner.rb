class Owner < ActiveRecord::Base
	belongs_to :ownership, polymorphic: true
	has_many :addresses, as: :addressable
end
