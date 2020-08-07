module Robot
  module Commands
    class Right < Base
      def self.matches?(command)
        command.to_sym == Robot::Directions::RIGHT
      end

      def self.call(position)
        position.right
      end
    end
  end
end
