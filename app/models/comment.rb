class Comment < ActiveRecord::Base
	belongs_to :commentable, polymorphic: true
	belongs_to :author, class_name: "User"
	has_many :comments, as: :commentable
	validates :commentable, :contents, presence: true
	validates :commentable, :author, presence: true
end
