# frozen_string_literal: true

module Robot
  module Commands
    class Move < Base
      MOVE = 'MOVE'

      def self.matches?(command)
        command == MOVE
      end

      def self.call(position)
        {
          Robot::Directions::NORTH => position.north,
          Robot::Directions::SOUTH => position.south,
          Robot::Directions::EAST => position.east,
          Robot::Directions::WEST => position.west
        }.fetch(position.direction)
      end
    end
  end
end
