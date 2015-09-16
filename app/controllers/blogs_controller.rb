class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.page(params[:page]).per(5)
  end

  def show
    @blog = Blog.find(params[:id])
  end
end
