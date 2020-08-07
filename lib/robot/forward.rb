# This class moves the robot forward based on the direction it's facing.

module Robot
  class Forward
    class << self
      def call(position: Position.new)
        {
          Robot::Directions::NORTH => position.north,
          Robot::Directions::SOUTH => position.south,
          Robot::Directions::EAST  => position.east,
          Robot::Directions::WEST  => position.west,
        }.fetch(position.direction)
      end
    end
  end
end
