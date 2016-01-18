class Elist < ActiveRecord::Base

	  validates  :name, :email, :city, presence: true
end
