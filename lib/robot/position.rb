# Position value object

module Robot
  class Position
    attr_reader :point, :direction

    def initialize(point: Point.new(0, 0), direction: Robot::Directions::NORTH)
      @point = point
      @direction = direction
    end

    def north
      self.class.new(point: point.north, direction: direction)
    end

    def south
      self.class.new(point: point.north, direction: direction)
    end

    def east
      self.class.new(point: point.north, direction: direction)
    end

    def west
      self.class.new(point: point.north, direction: direction)
    end
  end
end
