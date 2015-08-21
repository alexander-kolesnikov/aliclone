class Vendor < ActiveRecord::Base
  has_many :products, dependent: :restrict_with_error
  has_many :comments, as: :commentable
  belongs_to :owner, class_name: "User"
  validates :title, presence: true, uniqueness: true
  mount_uploader :logo, PictureUploader
end
