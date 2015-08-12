class Product < ActiveRecord::Base
  has_many :pictures
  belongs_to :vendor

  validates :title, presence: true, uniqueness: true
  
  searchable do
    text :title
    text :description
  end
end
