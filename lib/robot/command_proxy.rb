# This class implements the proxy design pattern. It sits between the client and the commands,
# and only invokes the command if it passes validation.
require 'byebug'
module Robot
  class CommandProxy

    attr_reader :command_string, :position

    def initialize(command_string:, position:)
      @command_string = command_string
      @position = position
    end

    def call
      return position if will_fall?
      apply
    end

    private

    def apply
      command_class.(position)
    end

    def command_class
      Robot::Commands::Factory.build(command_string)
    end

    def will_fall?
      new_position = apply
      new_position.point > Point.new(x: 4, y: 4)
    end
  end
end
