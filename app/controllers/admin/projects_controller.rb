class Admin::ProjectsController < ApplicationController
  layout "administrator"
  before_filter :is_admin?
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order(id: :desc)
  end

  def new
    @project = Project.new
    @action = :create
  end

  def create
    @project = Project.new(project_params)
    @project.published_at = Time.now
    if @project.save
      flash[:success] = "Saved project \"#{@project.title}\""
      redirect_to admin_projects_path
    else
      flash[:alert] = "There was an error saving the project"
      render :new
    end
  end

  def edit
    @action = :update
  end

  def update
    @project.update(project_params)
    if @project.save
      flash[:success] = "Saved project \"#{@project.title}\""
      redirect_to admin_projects_path
    else
      flash[:alert] = "There was an error saving the project."
      render :new
    end
  end

  def destroy
    @project.destroy
    flash[:success] = "Deleted projects \"#{@blog.title}\""
    redirect_to admin_projects_url
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params[:project]
    end
end