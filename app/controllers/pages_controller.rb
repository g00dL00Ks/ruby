class PagesController < ApplicationController
	
  def home
  	@pro = Pro.all
  	  @elist = Elist.new
  end

  def about
  end
end
