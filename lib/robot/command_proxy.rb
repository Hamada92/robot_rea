# This class implements the proxy design pattern. It sits between the client and the commands,
# and only invokes the command if it passes validation.

module Robot
  class CommandProxy

    attr_reader :command_string, :position, :table_size

    def initialize(command_string:, position: nil, table_size: Point.new(x: 4, y: 4))
      @command_string = command_string
      @position = position
      @table_size = table_size
    end

    def call
      return if not_placed_yet? && !place_command?
      return position if will_fall?
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
    rescue Robot::InvalidCommand => e
      puts "#{command_string} is not a valid command, please enter a valid command"
    end

    def will_fall?
      new_position = execute
      new_position.point > table_size
    end

    def not_placed_yet?
      position.nil?
    end

    def place_command?
      command_class.is_a?(Robot::Commands::Place)
    end
  end
end
