class OffersController < ApplicationController
  load_and_authorize_resource

  def show
    @offer = Offer.find(params[:id])
  end
    
  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if !@offer.image.empty?
      if @offer.save
        redirect_to @offer
      else
        render :new
      end
    end
  end

  def index
    @offers = Offer.paginate(page: params[:page], per_page: 10)
  end
       
  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params) && !@offer.image.empty?
      redirect_to offer_path, flash: { notice: "Your offer has been updated" }
    else
      render 'edit'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    if can? :manage, @offer
      @offer.destroy
      redirect_to offers_path, flash: { notice: "Your offer has been deleted" }
    end
  end

  def models
    @target = params[:target]
    @models = Model.where(brand_id: params[:brand_id])
    respond_to do |format|
      format.turbo_stream
    end
  end



  private

  def offer_params
    params.require(:offer).permit(:brand_id, :model_id, :year, :engine_type, :drive_unit, :transmission, :engine_capacity, :color, 
    :condition, :price, :contacts, {image: []}).merge({user_id: current_user.id})
  end
end
