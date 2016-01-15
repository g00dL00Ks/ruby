class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_pro

  respond_to :html


  def index
    @services = Service.all
    respond_with(@services)
  end

  def show
    @services = Service.all.where(pro_id: current_user.pro.id)

  end

  def new
    @service = Service.new


  end

  def edit
  end

  def create
    @service = Service.new(service_params)
    @service.pro_id = @pro.id
    @service.save

  end

  def update
    @service.update(service_params)
    respond_with(@service)
  end

  def destroy
    @service.destroy
    respond_with(@service)
  end

  private
    def set_service

      @service = Service.find(params[:pro_id])
    end

    def set_pro
     @pro = Pro.find(params[:pro_id])
    end


    def service_params
      params.require(:service).permit(:title, :description, :length, :price, :pro_id)
    end
end
