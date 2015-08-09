class ProductPicture < ActiveRecord::Base
  belongs_to :Product

  searchable do
  	text :title
  end
end
