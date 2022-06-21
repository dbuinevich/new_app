class BrandsController < ApplicationController
    load_and_authorize_resource

  def index
    @brands = Brand.paginate(page: params[:page], per_page: 20)
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
    #   redirect_to @brand
    redirect_to brands_path
    else
      render :new
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to brand_path(@brand), flash: { notice: "Your brand has been updated" }
    else
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    if can? :manage, @brand
      @brand.destroy
      redirect_to brands_path, flash: { notice: "Your brand has been deleted" }
    end
  end

  def show
    @models = Model.where(brand_id: @brand.id)
  end

  private

  def brand_params
    params.require(:brand).permit(:brand)
  end
end