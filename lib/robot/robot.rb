module Robot
  class Robot
    attr_reader :position, :max_point

    def intiailize(position:, max_point: Point.new(4, 4))
      @position  = position
      @max_point = max_point
    end

    def placed?
      !position.nil?
    end
  end
end
