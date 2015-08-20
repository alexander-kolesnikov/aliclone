class CommentsController < ApplicationController

  def create
    Product.find(params[:product_id]).comments.create(contents: params[:comment][:contents], author: current_user)
  	redirect_to :back
  end
end
