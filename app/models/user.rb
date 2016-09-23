class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :suggest, dependent: :destroy
end
