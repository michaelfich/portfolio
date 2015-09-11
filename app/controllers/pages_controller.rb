class PagesController < ApplicationController
  def home
    @projects = Project.where(featured: true)
  end

  def portfolio
  end
end
