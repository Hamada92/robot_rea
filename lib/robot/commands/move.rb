require 'robot/step'

module Robot
  module Commands
    class Move
      MOVE = 'Move'.freeze

      def self.matches?(command)
        command.to_sym == MOVE
      end

      def self.call(position)
        Step.(position: position)
      end
    end
  end
end
