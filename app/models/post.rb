class Post < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title, use: :slugged

  # scope :recent, -> { where('created_at < ?', Time.now).order(:name).limit(3)}

  def self.recent
    where('created_at < ?', Time.now).order(:title).limit(3)
  end
end
