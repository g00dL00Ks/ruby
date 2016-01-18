class ElistsController < ApplicationController
  before_action :set_elist, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @elists = Elist.all
    respond_with(@elists)
  end

  def show
    respond_with(@elist)
  end

  def new
    @elist = Elist.new

  end

  def edit
  end

  def create
    @elist = Elist.new(elist_params)

      respond_to do |format|
      if @elist.save
        format.html { redirect_to root_path, alert: 'Thank you for joining the wait list!' }
        format.json { render :show, status: :created, location: @contact}
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end    
  end

  def update
    @elist.update(elist_params)
    respond_with(@elist)
  end

  def destroy
    @elist.destroy
    respond_with(@elist)
  end

  private
    def set_elist
      @elist = Elist.find(params[:id])
    end

    def elist_params
      params.require(:elist).permit(:name, :email, :city)
    end
end
