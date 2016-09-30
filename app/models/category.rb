class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :children, class_name: Category.name, foreign_key: :parent_id
  belongs_to :parent, class_name: Category.name
  validates :title, presence: true

  scope :parent_category, ->{where parent_id: nil}
  scope :children, ->{where.not parent_id: nil}
end
