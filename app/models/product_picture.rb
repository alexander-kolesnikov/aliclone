class ProductPicture < ActiveRecord::Base
  belongs_to :product

  mount_uploader :title, PictureUploader

  searchable do
  	text :title
  end
end
