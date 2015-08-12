class Vendor < ActiveRecord::Base
  has_many :products, dependent: :restrict_with_error
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, PictureUploader
end
