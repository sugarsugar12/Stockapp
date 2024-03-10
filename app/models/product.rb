class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image

  validates :image, presence: true
  validates :stock, presence: true
  validates :price, presence: true
  validates :title, presence: true
end
