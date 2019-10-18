class User < ApplicationRecord
  has_one_attached :avatar
  validates :username, presence: true
end
