class Post < ApplicationRecord

  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :category, presence: true, inclusion: { in: %w[News Blog Tutorial Review] }
  
  # Enum for statuses
  STATUSES = %w[draft published].freeze

  validates :status, inclusion: { in: STATUSES }  

  # Scope to fetch posts that are ready to be published
  # scope :published, -> { where("publish_at <= ?", Time.current) }

  # Scope to fetch posts scheduled for the future
  # scope :scheduled, -> { where("publish_at > ?", Time.current) }

end
