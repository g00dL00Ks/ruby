class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pro, dependent: :destroy

  validates :name, :city, presence: true

#Validation that the user selects an expertise
# the logic works but two problems:
# 1 - the alert message doesn't come up
# 2- all existing users can't access their account b/c they are missing data.  
# we could need to clear the database before implementing

#CODE FOR VALIDATION
#validate :at_least_one_expertise

#def at_least_one_expertise
#  unless [:trainer, :dietician, :nutritionist, :health_coach, :career_coach, :life_coach, :stylist].include?(true)
#   errors[:base] << ("Please choose at least one area of expertise.")
#  end
#end   


   
end
