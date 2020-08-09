# frozen_string_literal: true

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

    def ==(other)
      x == other.x && y == other.y
    end

    def >(other)
      x > other.x || y > other.y
    end

    def <(other)
      x < other.x || y < other.y
    end

    def to_s
      "#{x}, #{y}"
    end
  end
end
