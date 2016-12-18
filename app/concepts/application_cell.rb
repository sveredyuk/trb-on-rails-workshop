class ApplicationCell < Trailblazer::Cell
  def self.form
    include ActionView::Helpers::FormHelper
    include SimpleForm::ActionViewExtensions::FormHelper
    include ActionView::RecordIdentifier
    include ActionView::Helpers::FormOptionsHelper

    self.send :property, :contract

    def projects_link(label: 'Projects')
      link_to label, projects_path
    end
  end
end
