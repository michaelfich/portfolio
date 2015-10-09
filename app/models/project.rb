class Project < ActiveRecord::Base
  has_attached_file :preview
  validates_attachment_content_type :preview, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def to_param
    slug
  end
end
