class Product < ActiveRecord::Base
  searchable do
    text :title
    text :description
  end
end
