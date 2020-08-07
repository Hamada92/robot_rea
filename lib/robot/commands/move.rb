module Robot
  module Commands
    class Move < Base
      MOVE = 'MOVE'.freeze

      def self.matches?(command)
        command == MOVE
      end

      def self.call(position)
        Forward.(position: position)
      end
    end
  end
end
