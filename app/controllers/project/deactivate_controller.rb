class Project
  class DeactivateController < BaseController
    def create
      run Project::Deactivate, params.merge!(project: project)

      redirect_to projects_path
    end
  end
end
