class Service < ActiveRecord::Base
  validates  :title, :description, :length, :price, presence: true
  

  belongs_to :pro, foreign_key: "pro_id", dependent: :destroy


end
