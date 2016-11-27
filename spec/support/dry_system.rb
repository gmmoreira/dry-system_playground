require 'dry/system/container'

class TestContainer < Dry::System::Container; end
Injector = TestContainer.injector
