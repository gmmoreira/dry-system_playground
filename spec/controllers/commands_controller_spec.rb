require 'rails_helper'
#require 'dry/system/container'

describe 'CommandsController', type: :controller do
  let(:hello_world_command) { double("command") }
  let(:my_logger) { double("command") }

  before do
    TestContainer.register 'hello_world', hello_world_command
    TestContainer.register 'my_logger', my_logger

    @controller = CommandsController.new

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

