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
    if params[:vendor][:logo]
      vendor.update!(logo: open(params[:vendor][:logo]))
    end
    redirect_to vendor
  end

  def new
    @vendor = Vendor.new
  end


  def create
    vendor = Vendor.create(title: params[:vendor][:title], description: params[:vendor][:description], owner: current_user)
    if params[:vendor][:logo]
      vendor.update!(logo: open(params[:vendor][:logo]))
    end
    redirect_to vendor
  end
end
