class Category < ActiveRecord::Base
  belongs_to :category
  validates :title, presence: true, uniqueness: true
end