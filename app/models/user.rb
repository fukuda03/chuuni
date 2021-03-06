class User < ApplicationRecord
  validates :name, presence: true, length:{ in: 1..15 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  validates :password, :password_confirmation, format:{ with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i}

  has_secure_password

  has_many :topics
  has_many :favorites
  has_many :comments
end
