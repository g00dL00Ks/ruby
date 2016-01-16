class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pro, dependent: :destroy

  validates :name, presence: true

  # need to add a validation that the user selects at least one area of expertise

end
