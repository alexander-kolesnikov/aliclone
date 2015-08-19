class Vendor < ActiveRecord::Base
  has_many :products, dependent: :restrict_with_error
  has_many :comments, as: :commentable
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, PictureUploader
end
