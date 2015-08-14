class Product < ActiveRecord::Base
  has_many :pictures
  belongs_to :vendor
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :vendor, presence: true
  
  searchable do
    text :title
    text :description
  end
end
