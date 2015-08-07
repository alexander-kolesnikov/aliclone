class ProductsController < ApplicationController
  def index
  	#render text: "the search query is #{params[:query]}"
  	#p params[:query]
  	@products = Product.search  do
      fulltext  params[:query]
  	  #order_by :title, :desc
  	  #order_by :description, :desc
      #paginate :page => 2, :per_page => 15
    end.results
  end
end
