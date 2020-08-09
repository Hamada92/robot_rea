require 'yaml'

module Robot
  class Table
    attr_reader :min_point, :max_point

    def initialize
      @min_point = set_min_point
      @max_point = set_max_point
    end

    private

    def set_min_point
      Point.new(x: minimum_x, y: minimum_y)
    end

    def set_max_point
      Point.new(x: maximum_x, y: maximum_y)
    end

    def config_file
      YAML.load_file(File.join(root, 'config.yaml'))
    end

    def root
      File.expand_path('../../../', __FILE__)
    end

    def minimum_x
      config_file["min_x"]
    end

    def minimum_y
      config_file["min_y"]
    end

    def maximum_x
      config_file["max_x"]
    end

    def maximum_y
      config_file["max_y"]
    end
  end
end
