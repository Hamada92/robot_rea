module Robot
  class Game
    attr_reader :input
    def initialize(input: $stdin)
      @input = input
    end

    def simulate
      while command = input.gets
        command = command.chomp

        @position = Robot::CommandProxy.new(command_string: command, position: @position).call
      end
    end

    def self.call(input: $stdin)
      game = new(input: input)
      game.simulate
    end
  end
end



