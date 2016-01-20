class ProsController < ApplicationController
  before_action :set_pro, only: [:show, :edit, :update, :destroy, :profile]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :show]


  respond_to :html 

  def index
    @pros = Pro.all
    respond_with(@pros)
  end

  def show
 
   @services = Service.where(pro_id: @pro.id).order("created_at DESC")

   @photos = Photo.where(pro_id: @pro.id).order("created_at DESC")

   end

  def new
    @pro = Pro.new
    @pro.user_id = current_user.id
    @pro.services.build
    @pro.photos.build

  end

  def edit
    @pro.services.build
  end

  def profile
  #  @services = Service.where(pro_id: @pro.id).order("created_at DESC")
  
   # @services = Service.where("pro_id = '#{@pro_id}'")

  end

  def create
    @pro = Pro.new(pro_params)
    @pro.user_id = current_user.id
    respond_to do |format|
      if @pro.save
        format.html { redirect_to pro_path(current_user.pro.id), notice: 'Thanks for saving your.  Please complete the remainder of your profile' }
        format.json { render :show, status: :created, location: @pro }
      else
        format.html { render :new }
        format.json { render json: @pro.errors, status: :unprocessable_entity }    
      end
      end 
  end

  def update
    @pro.update(pro_params)
        respond_to do |format|
      if @pro.save
        format.html { redirect_to pro_path(current_user.pro.id), notice: 'Your information is saved' }
        format.json { render :show, status: :created, location: @pro }
      else
        format.html { render :new }
        format.json { render json: @pro.errors, status: :unprocessable_entity }    
      end
      end 
            end 

  def destroy
    @pro.destroy
    respond_with(@pro)
  end

  private
    def set_pro
      @pro = Pro.find(params[:id])
    end


    def pro_params
      params.require(:pro).permit(:image, :name, :user_id, :last_name, :description, 
        :year_started, :city, :location, :gender, :certifications, :specialty, :hometown, 
        :quote, :author, :tip, :facebook_page, :twitter_handle, :instagram_handle, 
        :pinterest_handle, :pinterest_link, :linkedin_page, :paypal_email, :phone, 
        :alt_email, :loc_inperson_private, :loc_inperson_public, :loc_inperson_yourspace, 
        :loc_virtual_short, :loc_virtual_long, :pre_work, :cancellation,  :everyday, :execs, 
        :celebs, :bridal, :prenatal, :petites, :plus_size, :travelers, :men, :women, :lgbt, 
        :age_und20, :age_20_30, :age_30_40, :age_40_50, :age_50_60, :age_60over , :closet, 
        :personal_styling, :personal_shopping, :commercial, :bundle_offers, :stylist_other, 
        :weight_loss, :weight_gain, :firming, :bootcamp, :bodybuilding, :endurance, 
        :trainer_prenatal, :recovery, :nutrition_planning, :yoga, :pilates, :trainer_bundle, 
        :trainer_other, :nutrition_analysis, :meal_planning, :food_sensitivity, :grocery, :pantry, 
        :supplement, :body_comp, :nutritionist_bundle, :nutritionist_other, :transition, :interview, 
        :exec_coaching, :lifestyle_coaching, :public_speaking, :dating, :time_mgmt, :ADD_coaching, 
        :stress_mgmt, :parenting, :spirituality, :coach_bundle, :coach_other, :q_enjoy, :q_approach, :q_common, :review,
        service_attributes: [:title, :description, :length, :price, :pro_id],
        photo_attributes: [:image, :title])
    end
end
