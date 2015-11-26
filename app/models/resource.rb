class Resource < ActiveRecord::Base
  validates :slug, presence: true

  def to_param
    slug
  end
end
