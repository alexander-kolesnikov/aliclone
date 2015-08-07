class Vendor < ActiveRecord::Base
  has_many :products
  validates :title, presence: true, uniqueness: true
  mount_uploader :vendor_logo, PictureUploader
end
