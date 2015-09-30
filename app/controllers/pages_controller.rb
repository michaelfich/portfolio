class PagesController < ApplicationController
  def home
    @projects = Project.order(id: :desc).where(featured: true).limit(3)
    @blogs = Blog.order(published_at: :desc).limit(2)
  end
end
