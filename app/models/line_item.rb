class LineItem < ApplicationRecord
  has_many :product
  belongs_to :order
end
