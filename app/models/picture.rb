class Picture < ActiveRecord::Base
  belongs_to :product

  mount_uploader :file, PictureUploader

  searchable do
  	text :title
  end
end
