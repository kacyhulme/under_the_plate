class Establishment < ActiveRecord::Base
	before_validation :generate_slug
	
	has_many :owners, as: :ownerships
	has_many :addresses, as: :addressable
	has_many :distributors
	has_many :cuisine_categorizations
	has_many :cuisines, through: :cuisine_categorizations
	
	validates :slug, uniqueness: true
	validates :name, presence: true, uniqueness: true
	validates :address_id, :owner_id, :distributor_id, presence: true, allow_blank: true

	scope :newest, -> { where('created_at < ?', Time.now).order(:name).limit(25)}
	
	def to_param
		slug
	end

	def generate_slug
		self.slug ||= name.parameterize if name
	end
end
