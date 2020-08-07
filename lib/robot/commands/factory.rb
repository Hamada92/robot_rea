# Factory class that takes a command and returns the command object that can handle it,
# this is used instead of if/else or case/when for each command.

module Robot
  module Commands
    class Factory
      class InvalidCommand < StandardError; end

      COMMANDS = [LEFT, RIGHT, MOVE, PLACE, REPORT]

      def self.build(command)
        command_klass = COMMANDS.select { |klass| klass.matches?(command) }
        command_klass || InvalidCommand.new
      end
    end
  end
end
