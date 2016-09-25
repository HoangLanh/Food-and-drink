class Product < ActiveRecord::Base
  belongs_to :category

  has_many :comments, dependent: :destroy
  has_many :line_items

  validates :name, presence: true, length: {maximum: 100}
  validates :image, presence: true
  validates :price, presence: true
  validates :quantity, presence: true

  ATTRIBUTES_PARAMS = [:category_id, :name, :description, :image,  :price, :race_score, :quantity]
end
