class CommandsController < ApplicationController
  include ::Injector[:my_logger, hello_world_command: :hello_world]

  def hello_world
    my_logger.("Calling command")
    result = hello_world_command.()
    my_logger.("Result is #{result}")

    render plain: result
  end
end
