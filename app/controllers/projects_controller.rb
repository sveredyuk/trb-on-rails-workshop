class ProjectsController < ApplicationController
  def index
    view 'project#index', projects
  end

  def show
    view 'project#show', project
  end

  def new
    form Project::Create

    render_form
  end

  def edit
    form Project::Update

    render_form
  end

  def create
    run Project::Create do |op|
      return redirect_to(op.model)
    end

    render_form
  end

  def update
    run Project::Update do |op|
      return redirect_to(op.model)
    end

    render_form
  end

  def destroy
    run Project::Destroy, params.merge!(project: project)

    redirect_to projects_path
  end

  private

  def projects
    @projects ||= Project.all
  end

  def project
    @project ||= Project.find(params[:id])
  end

  def render_form
    view 'project#form', @operation
  end
end
