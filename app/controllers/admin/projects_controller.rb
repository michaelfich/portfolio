class Admin::ProjectsController < AdminController
  layout "administrator"
  before_filter :is_admin?
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order(order: :desc)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Saved project \"#{@project.title}\""
      redirect_to admin_projects_path
    else
      flash[:alert] = "There was an error saving the project"
      render :new
    end
  end

  def edit
  end

  def update
    @project.update_attributes(project_params)
    if @project.save
      flash[:success] = "Saved project \"#{@project.title}\""
      redirect_to admin_projects_path
    else
      flash[:alert] = "There was an error saving the project."
      render :edit
    end
  end

  def destroy
    @project.destroy
    flash[:success] = "Deleted projects \"#{@blog.title}\""
    redirect_to admin_projects_url
  end

  private
    def set_project
      @project = Project.find_by(slug: params[:slug])
    end

    def project_params
      params.require(:project).permit(:title, :slug, :image, :order, :summary, :description, :url, :repo, :image_preview, :image_large, :featured, :display, :permitted, :completed)
    end
end
