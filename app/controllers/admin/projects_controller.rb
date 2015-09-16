class Admin::ProjectsController < ApplicationController
  layout "administrator"
  before_filter :is_admin?
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params[:project]
    end
end
