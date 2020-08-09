# Factory class that takes a command input and returns the command object that can handle it,
# this is used instead of if/else or case/when for each command.
# If the command entered does not match any known command, the NoOp Command will be returned.

module Robot
  module Commands
    COMMANDS = [Left, Right, Move, Place, Report, NoOp]

    class Factory
      def self.build(command)
        command_klass = COMMANDS.detect { |klass| klass.matches?(command) }
        command_klass
      end
    end
  end
end
