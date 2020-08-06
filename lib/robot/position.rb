# Position value object

module Robot
  class Position
    attr_reader :point, :direction

    def initialize(point: Point.new(x: 0, y: 0), direction: Robot::Directions::NORTH)
      @point = point
      @direction = direction
    end

    def north
      self.class.new(point: point.north, direction: direction)
    end

    def south
      self.class.new(point: point.south, direction: direction)
    end

    def east
      self.class.new(point: point.east, direction: direction)
    end

    def west
      self.class.new(point: point.west, direction: direction)
    end

    def left
      self.class.new(point: point, direction: left_options[direction] )
    end

    def right
      self.class.new(point: point, direction: right_options[direction] )
    end

    def ==(position)
      point == position.point && direction == position.direction
    end

    private

    def left_options
      {
        Robot::Directions::EAST  => Robot::Directions::NORTH,
        Robot::Directions::NORTH => Robot::Directions::WEST,
        Robot::Directions::WEST  => Robot::Directions::SOUTH,
        Robot::Directions::SOUTH => Robot::Directions::EAST,
      }.freeze
    end

    def right_options
      {
        Robot::Directions::EAST  => Robot::Directions::SOUTH,
        Robot::Directions::SOUTH => Robot::Directions::WEST,
        Robot::Directions::WEST  => Robot::Directions::NORTH,
        Robot::Directions::NORTH => Robot::Directions::EAST,
      }.freeze
    end
  end
end


