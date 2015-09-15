class ProjectsController < ApplicationController
  def index
    @projects = Project.where(display: true).order(id: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end
end
