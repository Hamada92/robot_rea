# Position value object

module Robot
  class Position
    attr_reader :point, :direction

    def initialize(point: Point.new(x: 0, y: 0), direction: Robot::Directions::NORTH)
      @point = point
      @direction = direction
    end

    def north
      Position.new(point: point.north, direction: direction)
    end

    def south
      Position.new(point: point.south, direction: direction)
    end

    def east
      Position.new(point: point.east, direction: direction)
    end

    def west
      Position.new(point: point.west, direction: direction)
    end

    def left
      Position.new(point: point, direction: lefts[direction] )
    end

    def right
      Position.new(point: point, direction: rights[direction] )
    end

    def ==(position)
      point == position.point && direction == position.direction
    end

    def to_s
      "#{point}, #{direction}"
    end

    private

    def lefts
      {
        Robot::Directions::EAST  => Robot::Directions::NORTH,
        Robot::Directions::NORTH => Robot::Directions::WEST,
        Robot::Directions::WEST  => Robot::Directions::SOUTH,
        Robot::Directions::SOUTH => Robot::Directions::EAST,
      }.freeze
    end

    def rights
      {
        Robot::Directions::EAST  => Robot::Directions::SOUTH,
        Robot::Directions::SOUTH => Robot::Directions::WEST,
        Robot::Directions::WEST  => Robot::Directions::NORTH,
        Robot::Directions::NORTH => Robot::Directions::EAST,
      }.freeze
    end
  end
end


