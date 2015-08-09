class Product < ActiveRecord::Base
  has_many :ProductPicture
  
  searchable do
    text :title
    text :description
  end
end
