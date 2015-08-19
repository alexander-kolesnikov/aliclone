class CommentsController < ApplicationController

  def create
  	@comment = Comment.new params.require(:comment).permit(:contents)
  	redirect_to :back
  end
end
