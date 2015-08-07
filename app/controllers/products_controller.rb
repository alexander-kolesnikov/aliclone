class ProductsController < ApplicationController
  def index
  	Product.search  do
      fulltext  params[:query], fields: :description
  	  order_by :title, :desc
  	  #order_by :description, :desc
      paginate :page => 1, :per_page => 15
    end
  end
end
