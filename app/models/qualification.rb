class Qualification < ActiveRecord::Base
  has_many :qualification_statuses, dependent: :destroy
  has_many :establishments, through: :qualification_statuses

  validates :name, presence: true, uniqueness: true
end
