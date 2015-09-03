class User < ActiveRecord::Base
  authenticates_with_sorcery!
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  attr_accessor :username

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end
