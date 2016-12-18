class Project
  class Destroy < Trailblazer::Operation
    contract Contract::Single

    def process(params)
      validate(params) do |contract|
        contract.project.destroy
      end
    end
  end
end
