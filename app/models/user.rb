class User < ApplicationRecord
  enum role: [:member, :admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy
end
