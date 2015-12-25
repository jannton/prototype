class Talent < ActiveRecord::Base
  has_secure_password
  #attr_accessible :image
  has_attached_file :image,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
   #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  #validates :image, :attachment_presence => true
  #validates_attachment :image, :presence => true, :content_type => { :content_type => "image/jpg" }

end
