require 'rails_helper'

RSpec.describe Project::Create do
  let(:result)    { run.first }
  let(:operation) { run.second }

  context 'invalid input' do
    let(:run) { Project::Create.run(project: {}) }

    it 'result false' do
      expect(result).to be false
    end

    it 'invalid operation' do
      expect(operation).to_not be_valid
      expect(operation.model).to_not be_persisted
    end
  end

  context 'valid input' do
    let(:run) do
      Project::Create.run(project: {
        name: 'Test project',
        description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        active: true
      })
    end

    it 'result false' do
      expect(result).to be true
    end

    it 'invalid operation' do
      expect(operation).to be_valid
      expect(operation.model).to be_persisted
    end
  end
end
