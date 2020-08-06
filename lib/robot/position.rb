# Position value object

module Robot
  class Position
    attr_reader :point, :direction

    def initialize(point: Point.new(0, 0), direction: Robot::Directions::NORTH)
      @point = point
      @direction = direction
    end
  end
end
