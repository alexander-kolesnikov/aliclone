class ProductsController < ApplicationController
  def index
  	@products = Product.search do
      fulltext  params[:query]
      with :categories, params[:category_id] unless params[:category_id].blank?
  	  #order_by :title, :desc
  	  #order_by :description, :desc
      paginate :page => params[:page], :per_page => 12
    end.results
    @total_pages = @products.total_pages
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
