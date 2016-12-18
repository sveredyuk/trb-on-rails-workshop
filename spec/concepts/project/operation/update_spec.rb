require 'rails_helper'

RSpec.describe Project::Update do
  let(:result)    { run.first }
  let(:operation) { run.second }
  let(:project)   { Project::Create.(project: { name: 'ProjectName', description: 'ProjectDescription valid', active: true }).model }

  context 'invalid input' do
    let(:run) { Project::Update.run(id: project.id, project: { name: '' }) }

    it 'result false' do
      expect(result).to be false
    end
  end

  context 'valid input' do
    let(:run) { Project::Update.run(id: project.id, project: { name: 'NewProjectName' }) }

    it 'result true' do
      expect(result).to be true
    end

    it 'name changed' do
      expect(operation.model.name).to eq 'NewProjectName'
    end
  end
end
