class Product < ActiveRecord::Base
  has_many :pictures
  has_many :comments, as: :commentable
  belongs_to :vendor
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :vendor, presence: true
  
  searchable do
    text :title
    text :description
  end

  def get_root_category
    10
  end
  
end
