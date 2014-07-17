class Address < ActiveRecord::Base

	belongs_to :addressable, polymorphic: true

	validates :addressable_type, :addressable_id, :street_number, :street_name, 
						:city, :state, :zip, :phone, :website, presence: true

	geocoded_by :address

  after_validation :geocode

	def address_display_name #format address display for form
		"#{street_number}" + " " +"#{street_name}" + " " + "#{zip}"
	end
end