class Project
  class Contract
    class Create < Reform::Form
      property :name
      property :description

      validates :name, presence: true
      validates :description, length: { minimum: 10 }
    end
  end
end
