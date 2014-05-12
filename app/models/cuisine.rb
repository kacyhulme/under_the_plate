class Cuisine < ActiveRecord::Base
	has_many :cuisine_categorizations, dependent: :destroy
	has_many :establishments, through: :cuisine_categorizations

	validates :name, presence: true, uniqueness: true
end
