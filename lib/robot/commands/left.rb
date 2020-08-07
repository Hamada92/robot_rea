module Robot
  module Commands
    class Left < Base
      def self.matches?(command)
        command.to_sym == Robot::Directions::LEFT
      end

      def self.call(position)
        position.left
      end
    end
  end
end
