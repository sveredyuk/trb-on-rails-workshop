class Project
  class BaseController < ApplicationController
    private

    def project
      @project ||= Project.find(params[:project_id])
    end
  end
end
