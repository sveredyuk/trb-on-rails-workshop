class Project
  class Create < Trailblazer::Operation
    include Model

    model Project, :create

    contract Contract::Create

    def process(params)
      validate(params[:project]) do |contract|
        contract.save
      end
    end
  end
end
