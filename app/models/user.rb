class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..14 }, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }

  has_many :posts
  has_many :comments
end
