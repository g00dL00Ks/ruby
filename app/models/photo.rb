class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "350x350>" }, :url =>':s3_domain_url',
  :path => '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	belongs_to :pro, foreign_key: "pro_id", dependent: :destroy

end
