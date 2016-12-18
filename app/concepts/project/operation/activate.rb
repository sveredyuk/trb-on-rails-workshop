class Project
  class Activate < Trailblazer::Operation
    contract Contract::Single

    def process(params)
      validate(params) do |contract|
        contract.project.update(active: true)
      end
    end
  end
end
