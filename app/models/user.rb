class User < ApplicationRecord
  enum role: [:member, :admin]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments, dependent: :destroy
  has_many :orders, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
  
  ATTRIBUTE_PARAMS = [:name, :email, :password, :password_confirmation,
    :avatar]
end
