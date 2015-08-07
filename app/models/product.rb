class Product < ActiveRecord::Base
  has_many :pictures
  validates :title, presense: true, uniqueness: true
  validates :description, presense: true
  belongs_to :vendor
end
