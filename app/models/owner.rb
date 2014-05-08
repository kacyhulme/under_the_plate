class Owner < ActiveRecord::Base
	belongs_to :ownership, polymorphic: true
	has_many :addresses, as: :addressable

	validates :name, :ownership_id, :ownership_type, :address_id, presence: true
	validates :company, presence: true

end
