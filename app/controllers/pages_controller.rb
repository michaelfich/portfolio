class PagesController < ApplicationController
  def home
    @projects = Project.order(order: :desc).where(featured: true).limit(3)
  end

  def about
    @about = Content.where(name: 'about').first
  end

  def resources
    @resources = Resource.all
  end
end
