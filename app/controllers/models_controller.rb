class ModelsController < ApplicationController
    load_and_authorize_resource

  def index
    redirect_to new_model_path
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
    #   redirect_to @brand
    redirect_to @brands
    else
      render :new
    end
  end

  private

  def brand_params
    params.require(:brand).permit(:brand)
  end
end