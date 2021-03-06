class Product < ActiveRecord::Base
  belongs_to :category

  has_many :comments, dependent: :destroy
  has_many :line_items

  mount_uploader :image, ImageUploader

  validates :name, presence: true, length: {maximum: 100}
  validates :price, presence: true
  validates :quantity, presence: true

  ATTRIBUTES_PARAMS = [:category_id, :name, :description, :image,  :price, :race_score, :quantity]
end
