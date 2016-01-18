class PhotosController < ApplicationController
  #before_action :set_pro
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.order('created_at')
  end

  def new
    @pro = current_user.pro
    @photo = @pro.photos.build
  end

  def create
    @pro = current_user.pro
    @photo = @pro.photos.build
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

  def photo_params
    params.require(:photo).permit(:image, :title, :pro_id, :url, :path)
  end
end
