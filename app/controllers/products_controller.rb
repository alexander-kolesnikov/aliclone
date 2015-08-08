class ProductsController < ApplicationController
  def index
  	#render text: "the search query is #{params[:query]}"
  	#p params[:query]
  	@products = (Product.search  do
      fulltext  params[:query]
  	  #order_by :title, :desc
  	  #order_by :description, :desc
      #paginate :page => 2, :per_page => 15
    end.results)
    p "QUERY PARAMS IN THE CONTROLLER ARE #{params[:query]}"
    p "THE RESULT OF THE SEARCH IN CONTROLLER IS #{@products}"
  end

  def show
  end
end
