class Vendor < ActiveRecord::Base
  has_many :products, dependent: :nullify
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, PictureUploader
end
