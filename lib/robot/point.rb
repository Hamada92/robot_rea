# Point value object

module Robot
  class Point
    attr_reader :x, :y

    def initialize(x:, y:)
      @x = x
      @y = y
    end

    def north
      Point.new(x: x, y: y + 1)
    end

    def south
      Point.new(x: x, y: y - 1)
    end

    def east
      Point.new(x: x + 1, y: y)
    end

    def west
      Point.new(x: x - 1, y: y)
    end

    def ==(point)
      x == point.x && y == point.y
    end

    def >(point)
      x > point.x || y > point.y
    end
  end
end
