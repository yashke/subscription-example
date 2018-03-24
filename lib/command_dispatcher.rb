require 'unknown_command_received'

class CommandDispatcher
  class FallbackHandler
    def handle(command)
      raise UnknownCommandReceived, "#{command.class} has no handler associated"
    end
  end

  def initialize
    @handlers = {}
    @fallback_handler = FallbackHandler.new
  end

  def handle(command)
    handler = @handlers.fetch(command.class, @fallback_handler)
    handler.handle(command)
  end

  def add_command_handler(command_class, handler)
    @handlers[command_class] = handler
  end
end
