class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :childrent, :class_name: Category.name, foreign_key: :parent_id
  has_many :parent, :class_name: Category.name
end
