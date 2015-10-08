class PagesController < ApplicationController
  def home
    @projects = Project.order(id: :desc).where(featured: true).limit(3)
  end
end
