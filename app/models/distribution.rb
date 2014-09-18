class Distribution < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :distributor
end
