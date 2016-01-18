class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :set_pro
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.pro_id = current_user.pro.id
    Aws.use_bundled_cert!
    @photo.save
    respond_to do |format|
      if @photo.save
        format.html { redirect_to pro_path(current_user.pro.id), alert: 'Photo was successfully Uploaded.' }
        format.json { render :show, status: :created, location: @photo}
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:pro_id])
  end

  def set_pro
    @pro = Pro.find(params[:pro_id])
  end

  def photo_params
    params.require(:photo).permit!
  end
end
