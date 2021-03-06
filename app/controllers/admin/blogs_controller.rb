module Admin
  class BlogsController < AdminController
    before_filter :admin?
    before_action :set_blog, only: [:show, :edit, :update, :destroy]

    def index
      @blogs = Blog.order(published_at: :desc).page(params[:page]).per(20)
    end

    def new
      @blog = Blog.new
    end

    def create
      @blog = Blog.new(blog_params)
      @blog.published_at = Time.now if @blog.published?

      if @blog.save
        flash[:success] = "Saved blog \"#{@blog.title}\""
        redirect_to admin_blogs_path
      else
        flash[:alert] = 'There was an error saving the blog post.'
        render :new
      end
    end

    def edit
    end

    def update
      @blog.update(blog_params)
      @blog.published_at = Time.now if @blog.changed.include?('published') && @blog.published

      if @blog.save
        flash[:success] = "Saved blog \"#{@blog.title}\""
        redirect_to admin_blogs_path
      else
        flash[:alert] = 'There was an error saving the blog post.'
        render :new
      end
    end

    def destroy
      @blog.destroy
      flash[:success] = "Deleted blog \"#{@blog.title}\""
      redirect_to admin_blogs_url
    end

    private

    def set_blog
      @blog = Blog.find_by(slug: params[:slug])
    end

    def blog_params
      params.require(:blog).permit(:title, :published, :slug, :body)
    end
  end
end
