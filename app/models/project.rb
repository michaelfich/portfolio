class Project < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}

  def to_param
    slug
  end
end
