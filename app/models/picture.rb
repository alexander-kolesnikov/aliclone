class Picture < ActiveRecord::Base
  belongs_to :product
  validates :title, presense: true, uniqueness: true
  mount_uploader :preview_picture, ProductPictureUploader
  mount_uploader :fullsize_picture, ProductPictureUploader
end
