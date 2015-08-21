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
    integer :categories, multiple: true do
      cat_arr = []
      cat = category
      begin 
        cat_arr << cat.id
        cat = cat.category
      end while cat
      cat_arr
    end
  end

  def showMe
    @product = Product.first
  end

end
