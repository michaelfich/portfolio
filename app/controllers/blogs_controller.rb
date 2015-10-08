class BlogsController < ApplicationController
  def index
    @blogs = Blog.all.order(published_at: :desc).page(params[:page]).per(5)
  end

  def show
    @blog = Blog.find_by(slug: params[:slug])
    @comments = Comment.where(blog_id: @blog.id)
    @comment = Comment.new
  end
end
