class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def to_param
    slug
  end
end
