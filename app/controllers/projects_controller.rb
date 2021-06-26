class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
  @project = Project.find(params[:id])
  end

  def new
  @project = Project.new # needed to instantiate the form_for
  end

  def create
  @project = Project.new(project_params)
  @project.save
  # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
  @project = Project.find(params[:id])
  end

  def update
  @project = Project.find(params[:id])
  @project.update(project_params)
  end

  def destroy
  @project = Project.find(params[:id])
  @project.destroy

  # no need for app/views/projects/destroy.html.erb
  redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :url, :date)
  end



  # Will raise ActiveModel::ForbiddenAttributesError
end
end
