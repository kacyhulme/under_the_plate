class Address < ActiveRecord::Base

  belongs_to :addressable, polymorphic: true

  # validates :addressable_type, :addressable_id, :street_number, :street_name,
  # :city, :state, :zip, :phone, :website, presence: true

  geocoded_by :zip  #or use address_display_name

  after_validation :geocode

  def address_display_name #format address display for form collection select drop down
    "#{street_number}" + " " +"#{street_name}" + " " + "#{zip}"
  end

  def address_display_street
    "#{street_number}" + " " +"#{street_name}"
  end

  def address_display_city
    "#{city}" + ", " +"#{state}" + " " + "#{zip}"
  end
end
