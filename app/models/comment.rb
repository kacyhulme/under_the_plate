class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :establishment

  STARS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
end
