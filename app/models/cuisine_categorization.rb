class CuisineCategorization < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :cuisine
end

