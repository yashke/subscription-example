require 'minitest/autorun'
require 'command_dispatcher'

class CommandDispatcherTest < Minitest::Test
  class DummyCommand
  end

  class DummyHandler
    attr_reader :handled_command

    def initialize
      @handled_command = false
    end

    def handle(command)
      @handled_command = true
    end
  end

  def test_raises_exception_when_command_is_not_supported
    command_dispatcher = CommandDispatcher.new
    assert_raises(UnknownCommandReceived) do
      command_dispatcher.handle(DummyCommand.new)
    end
  end

  def test_handles_known_command
    command_dispatcher = CommandDispatcher.new
    handler = DummyHandler.new
    command_dispatcher.add_command_handler(DummyCommand, handler)

    command_dispatcher.handle(DummyCommand.new)
    assert(handler.handled_command, "DummyHandler should handled the command")
  end
end
