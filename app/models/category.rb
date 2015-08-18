class Category < ActiveRecord::Base
  belongs_to :category
  has_many :products
  validates :title, presence: true, uniqueness: true
end
