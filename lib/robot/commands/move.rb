module Robot
  module Commands
    class Move < Base
      MOVE = 'Move'.freeze

      def self.matches?(command)
        command.to_sym == MOVE
      end

      def self.call(position)
        Forward.(position: position)
      end
    end
  end
end
