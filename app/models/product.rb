class Product < ActiveRecord::Base
  searchable do
    string :title
    text :description
  end
end
