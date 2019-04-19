class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true

  belongs_to :user
  belongs_to :index

  mount_uploader :image, ImageUploader
end
