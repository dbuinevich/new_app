class ModelsController < ApplicationController
    load_and_authorize_resource

  def index
    redirect_to new_model_path
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new(model_params)
    if @model.save!
      
      redirect_to brands_path
    else
      render :new
    end
  end

  def edit
    @model = Model.find(params[:id])
  end

  def update
    @model = Model.find(params[:id])
    if @model.update(model_params)
      redirect_to brand_path(brand), flash: { notice: "Your model has been updated" }
    else
      render 'edit'
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @model.destroy
      redirect_to brand_path(brand), flash: { notice: "Your model has been deleted" }
  end

  private

  def model_params
    params.require(:model).permit(:brand_id, :model)
  end
end