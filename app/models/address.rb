class Address < ActiveRecord::Base
	belongs_to :addressable, polymorphic: true

	validates :addressable_type, :addressable_id, :street_number, :street_name, 
						:city, :state, :zip, :phone, :website, presence: true
end