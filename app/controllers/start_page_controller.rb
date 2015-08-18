class StartPageController < ApplicationController
  def index
    @all_categories = Category.where(category_id: nil)
    @categories = Category.where(category_id: nil).order('RANDOM()').first(8)
  end
end
