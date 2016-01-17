class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_pro
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  respond_to :html


  def index
    @services = Service.all
    respond_with(@services)
  end

  def show
    #@services = Service.find(params[:id])
    #@services = Service.all    

    #@services = Service.where(pro_id: current_user.pro.id)
  end

  def new
    @service = Service.new


  end

  def edit
  end

  def create
    @service = Service.new(service_params)
    @service.pro_id = current_user.pro.id
    @service.save
    respond_to do |format|
      if @service.save
        format.html { redirect_to root_path, alert: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service}
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
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