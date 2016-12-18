class Project
  class ActivateController < BaseController
    def create
      run Project::Activate, params.merge!(project: project)

      redirect_to projects_path
    end
  end
end
