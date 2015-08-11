class ProductsController < ApplicationController
  def index
  	@products = (Product.search do
      fulltext  params[:query]
  	  #order_by :title, :desc
  	  #order_by :description, :desc
      #paginate :page => 2, :per_page => 15
    end.results)
  end

  def show
  end
end
