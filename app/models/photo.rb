class Photo
  include Mongoid::Document
  include Mongoid::Paperclip

  field :data, type: DateTime

  belongs_to :user
  has_mongoid_attached_file :image, 
  :styles => {
  	:original => ['100x100#',   :jpg]
  }
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
