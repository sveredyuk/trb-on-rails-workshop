class Project
  class Deactivate < Trailblazer::Operation
    contract Contract::Single

    def process(params)
      validate(params) do |contract|
        contract.project.update(active: false)
      end
    end
  end
end
