class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy

  def to_param
    slug
  end
end
