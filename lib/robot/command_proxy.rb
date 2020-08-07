# This class implements the proxy design pattern. It sits between the client and the commands,
# and only invokes the command if it passes validation.

module Robot
  class CommandProxy

    attr_reader :command, :position

    def initialize(command:, position:, max_point:)
      @command = command
      @robot = robot
    end

    def call
      prevent_falling
      command.(position)
    end

    private

    def prevent_falling
      new_position = call
      return if new_position.point > max_point
    end
  end
end
