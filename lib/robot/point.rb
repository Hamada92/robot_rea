# Point value object

module Robot
  class Point
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end
end