class Vendor < ActiveRecord::Base
  has_many :products
  validates :title, presense: true, uniqueness: true
  mount_uploader :vendor_logo, PictureUploader
end
