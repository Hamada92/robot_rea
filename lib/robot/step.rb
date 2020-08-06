module Robot
  class Step
    class << self
      def call(position: Position.new)
        {
          Robot::Directions::NORTH => position.north,
          Robot::Directions::SOUTH => position.south,
          Robot::Directions::EAST  =>  position.east,
          Robot::Directions::WEST =>  position.west,
        }.fetch(position.direction)
      end
    end
  end
end
