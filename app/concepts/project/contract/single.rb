class Project
  class Contract
    class Single < Reform::Form
      property :project, virtual: true

      validates :project, presence: true
    end
  end
end
