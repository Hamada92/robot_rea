# Point value object

module Robot
  class Point
    attr_reader :x, :y

    def initialize(x:, y:)
      @x = x
      @y = y
    end

    def north
      self.class.new(x: x, y: y + 1)
    end

    def south
      self.class.new(x: x, y: y - 1)
    end

    def east
      self.class.new(x: x + 1, y: y)
    end

    def west
      self.class.new(x: x - 1, y: y)
    end

    def ==(point)
      x == point.x && y == point.y
    end
  end
end
