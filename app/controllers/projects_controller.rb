class ProjectsController < ApplicationController
  def index
    @projects = Project.where(display: true).order(order: :desc)
  end

  def show
    @project = Project.find_by(slug: params[:slug])
  end
end
