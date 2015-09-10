class PagesController < ApplicationController
  def home
    @projects = Project.where(featured: true)
  end
end
