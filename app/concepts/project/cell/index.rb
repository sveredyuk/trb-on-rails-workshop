class Project
  class Cell
    class Index < Base
      private

      def toggle_project_activity_link(project)
        if project.active?
          deactivate_project_link(project)
        else
          activate_project_link(project)
        end
      end

      def activate_project_link(project)
        link_to 'Activate', project_activate_path(project), method: :post
      end

      def deactivate_project_link(project)
        link_to 'Deactivate', project_deactivate_path(project), method: :post
      end

      def project_link(project)
        link_to 'Show', project
      end

      def destroy_project_link(project)
        link_to 'Destroy', project,
          data: { confirm: 'Are you sure?' },
          method: :delete
      end

      def new_project_link
        link_to 'New Project', new_project_path
      end
    end
  end
end
