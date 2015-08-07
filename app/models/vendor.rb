class Vendor < ActiveRecord::Base
  has_many :products
  validates :title, presense: true, uniqueness: true
  mount_uploader :logo, PictureUploader
end
