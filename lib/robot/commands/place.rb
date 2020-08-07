module Robot
  module Commands
    class Place < Base
      PLACE = 'Place'.freeze

      def self.matches?(command)
        command.to_sym == PLACE
      end

      def self.call(x:, y:, f:)
        Robot::Position.new(point: Point.new(x: x, y: y), direction: f)
      end
    end
  end
end
