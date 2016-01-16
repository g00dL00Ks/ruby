class PagesController < ApplicationController
	
  def home
  	@pro = Pro.all
  end

  def about
  end
end
