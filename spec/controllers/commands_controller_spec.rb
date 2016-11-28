require 'rails_helper'

describe 'CommandsController', type: :controller do
  let(:hello_world_command) { double("command") }
  let(:my_logger) { double("command") }

  before do
    @controller = CommandsController.new(my_logger: my_logger, hello_world_command: hello_world_command)

    allow(my_logger).to receive(:call).with(anything)
    allow(hello_world_command).to receive(:call).with(anything)
  end

  describe '#hello_world' do
    subject { get :hello_world }

    it 'should call hello_world_command' do
      expect(hello_world_command).to receive(:call).and_return('test')
      subject
    end
  end
end

