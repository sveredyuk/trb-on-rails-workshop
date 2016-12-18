class Project
  class Cell
    class Base < ApplicationCell
      def edit_project_link(project)
        link_to 'Edit', edit_project_path(project)
      end

      def back_to_projects_link
        projects_link label: 'Back'
      end
    end
  end
end
