# This class implements the proxy design pattern. It sits between the client and the commands,
# and only invokes the command if it passes validation.

module Robot
  class CommandProxy

    attr_reader :command, :position

    def initialize(command:, position:)
      @command = command
      @position = position
    end

    def call
      return unless position
      @command.(@position)
    end

    private

    def prevent_falling
      return unless command.is_a(Robot::Move)
      new_position = call
    end
  end
end
