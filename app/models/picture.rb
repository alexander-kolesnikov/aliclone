class Picture < ActiveRecord::Base
  belongs_to :product, touch: true

  mount_uploader :file, PictureUploader

  validates :title, presence: true, uniqueness: true
end
