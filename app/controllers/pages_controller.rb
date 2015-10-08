class PagesController < ApplicationController
  def home
    @projects = Project.order(order: :desc).where(featured: true).limit(3)
  end
end
