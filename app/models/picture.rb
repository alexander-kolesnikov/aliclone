class Picture < ActiveRecord::Base
  belongs_to :product

  mount_uploader :file, PictureUploader

  validates :title, presence: true, uniqueness: true
end
