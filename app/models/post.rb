class Post < ApplicationRecord

  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
  validates :category, presence: true, inclusion: { in: %w[News Blog Tutorial Review] }
  
end
