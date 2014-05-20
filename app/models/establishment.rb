class Establishment < ActiveRecord::Base

	extend FriendlyId
  friendly_id :name, use: :slugged
		
	has_many :owners, as: :ownerships
	has_many :addresses, as: :addressable
	has_many :distributors
	has_many :cuisine_categorizations
	has_many :cuisines, through: :cuisine_categorizations
	
	validates :slug, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :address_id, :owner_id, :distributor_id, presence: true, allow_blank: true

	scope :newest, -> { where('created_at < ?', Time.now).order(:name).limit(25)}
	
  def self.search(search)
  	where("LOWER(name) LIKE ?", "%#{search}%")
  end
end
