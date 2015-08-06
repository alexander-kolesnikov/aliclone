class Vendor < ActiveRecord::Base
  has_many :products
  validates :title, presense: true, uniqueness: true
  mount_uploader :avatar, AvatarUploader
end
