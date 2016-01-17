class Service < ActiveRecord::Base
  validates  :title, :description, :length, :price, presence: true
  validates :price, numericality: { greater_than: 0 }  

  belongs_to :pro, foreign_key: "pro_id", dependent: :destroy


end
