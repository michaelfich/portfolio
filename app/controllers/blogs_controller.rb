class BlogsController < ApplicationController
  def index
    @blogs = Blog.where(published: true).order(published_at: :desc).page(params[:page]).per(5)
  end

  def show
    @blog = Blog.find_by(slug: params[:slug])
    if @blog && @blog.published
      @comments = Comment.where(blog_id: @blog.id)
      @comment = Comment.new
    else
      flash[:alert] = "Unable to find the requested blog post."
      redirect_to blogs_url
    end
  end
end
