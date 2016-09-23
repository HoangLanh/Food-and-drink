class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :category
  belongs_to :line_item
end
