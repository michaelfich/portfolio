class PagesController < ApplicationController
  def home
    @projects = Project.where(featured: true)
    @blogs = Blog.order(published_at: :desc).last(2)
  end
end
