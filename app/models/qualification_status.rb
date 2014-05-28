class QualificationStatus < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :qualification
end
