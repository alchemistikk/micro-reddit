class Comment < ApplicationRecord
  validates :body, presence: true
  validate :user_id, presence: true
  validate :post_id, presence: true

  belongs_to :user
  belongs_to :post
end
