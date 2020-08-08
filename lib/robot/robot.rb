module Robot
  class Robot
    attr_reader: position

    def intiailize(position:)
      @position = position
    end

    def plcaed?
      !position.nil?
    end
  end
end
