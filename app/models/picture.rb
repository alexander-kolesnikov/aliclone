class Picture < ActiveRecord::Base
  belongs_to :product

  mount_uploader :file, PictureUploader

  validates :title, presense: true, uniqueness: true
end
