class Establishment < ActiveRecord::Base

  STARS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :addresses, as: :addressable
  has_many :distributors, through: :distributions 
  has_many :distributions
  has_many :cuisine_categorizations
  has_many :cuisines, through: :cuisine_categorizations
  has_many :qualification_statuses
  has_many :qualifications, through: :qualification_statuses
  has_many :comments
  
  # validates :slug, uniqueness: true
  validates :name, presence: true, uniqueness: true
  
  scope :recent, -> { where('created_at < ?', Time.now).order(:name).limit(3)}

  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search}%")
  end
end
