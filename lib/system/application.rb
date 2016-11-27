require 'dry/system/container'

class Application < Dry::System::Container
  configure do |config|
    config.root = Pathname("#{Rails.root}/lib")

    config.auto_register = 'commands'
  end

  load_paths!('commands')
end

Application.finalize!
