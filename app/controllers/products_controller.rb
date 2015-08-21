class ProductsController < ApplicationController
  def index
  	@products = Product.search do
      fulltext  params[:query]
  	  #order_by :title, :desc
  	  #order_by :description, :desc
      paginate :page => params[:page], :per_page => 12
    end.results
    @total_pages = @products.total_pages
  end

  def show
    @product = Product.find(params[:id])
  end
end
