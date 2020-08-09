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
      instruction
    end

    def self.instruction
      puts <<~HEREDOC
        Welcome to the Robot game
        Please enter one of the following commands:
        PLACE 0,0,NORTH (PLACE X,Y,DIRECTION)
        MOVE
        LEFT
        RIGHT

        invalid commands are ignored.
        You must start with a place command.
      HEREDOC
    end
  end
end



