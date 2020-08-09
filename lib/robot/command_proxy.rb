# This class implements the proxy design pattern. It sits between the client and the commands,
# and only invokes the command if it passes validation.
module Robot
  class CommandProxy

    attr_reader :command_string, :position, :min_point, :max_point

    def initialize(command_string:, position: nil, max_point: Point.new(x: 4, y: 4),
                    min_point: Point.new(x: 0, y: 0))
      @command_string = command_string
      @position = position
      @min_point = min_point
      @max_point = max_point
    end

    def call
      return if not_placed_yet? && !place_command?
      return position if would_fall?

      execute
    end

    private

    def execute
      if place_command?
        command_class.build_from_string_command(command_string)
      else
        command_class.(position)
      end
    end

    def command_class
      Robot::Commands::Factory.build(command_string)
    end

    def would_fall?
      return unless [Robot::Commands::Move, Robot::Commands::Place].include?(command_class)
      new_position = execute
      new_position.point > max_point || new_position.point < min_point
    end

    def not_placed_yet?
      position.nil?
    end

    def place_command?
      command_class == Robot::Commands::Place
    end
  end
end
