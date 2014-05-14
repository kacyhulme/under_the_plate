class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
  									format: /\A\S+@\S+|z/,
  									uniqueness: { case_insensitive: false }
 	
 	scope :admin, -> { where(admin: true).order(:name) }
 	scope :non_admin, -> { where(admin: false).order(:name) }

 	def self.authenticate(email, password)
 		user = User.find_by(email: email)
 		user && user.authenticate(password)
 	end
end
