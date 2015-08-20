class CommentsController < ApplicationController

  def create
  	if params[:product_id]
      Product.find(params[:product_id])
  	elsif params[:vendor_id]
  	  Vendor.find(params[:vendor_id])
    elsif params[:comment_id]
      Comment.find(params[:comment_id])
    end.comments.create(contents: params[:comment][:contents], author: current_user)

    redirect_to :back  
  end
end
