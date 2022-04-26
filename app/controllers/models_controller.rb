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

  private

  def model_params
    params.require(:model).permit(:brand_id, :model)
  end
end