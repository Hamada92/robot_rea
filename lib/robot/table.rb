# frozen_string_literal: true

require 'yaml'

module Robot
  class Table
    attr_reader :min_point, :max_point

    def initialize(min_point: Point.new(x: 0, y: 0), max_point: Point.new(x: 4, y: 4))
      @min_point = min_point
      @max_point = max_point
    end
  end
end
