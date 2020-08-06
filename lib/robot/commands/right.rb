require_relative '../rotate'

module Robot
  module Commands
    class Right < Base
      def self.matches?(command)
        command.to_sym == Robot::Directions::RIGHT
      end

      def self.call(position)
        Robot::Rotate.(position: position, towards: Robot::DIRECTIONS::RIGHT)
      end
    end
  end
end
