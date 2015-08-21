class VendorsController < ApplicationController
  def show
    @vendor = Vendor.find(params[:id])
  end

  def index
  end

  def edit
    @vendor = Vendor.find(params[:id])
    if @vendor.owner != current_user
      redirect_to edit_user_registration_path
    end
  end

  def update
    vendor = Vendor.find(params[:id])
    vendor.update!(title: params[:vendor][:title], description: params[:vendor][:description])
    redirect_to vendor
  end

  def create

  end
end
