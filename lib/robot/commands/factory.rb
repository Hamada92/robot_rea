# Factory class that takes a command and returns the command object that can handle it,
# this is used instead of if/else or case/when for each command.

module Robot
  module Commands
    COMMANDS = [Left, Right, Move, Place, Report]

    class Factory
      def self.build(command)
        command_klass = COMMANDS.detect { |klass| klass.matches?(command) }
        command_klass or raise Robot::InvalidCommand.new
      end
    end
  end
end
