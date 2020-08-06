require_relative '../rotate'

module Robot
  module Commands
    class Left < Base
      def self.matches?(command)
        command.to_sym == Robot::Directions::LEFT
      end

      def self.call(position)
        Robot::Rotate.(position: position, towards: Robot::DIRECTIONS::LEFT)
      end
    end
  end
end
