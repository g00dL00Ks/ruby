class Pro < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "350x350>" }, :url =>':s3_domain_url',
  :path => '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  has_many :services, dependent: :destroy   
  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true  

end
