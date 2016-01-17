class PhotosController < ApplicationController
  #before_action :set_pro
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.order('created_at')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to pro_path(current_user.pro.id)
    else
      render 'new'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title, :pro_id)
  end
end
