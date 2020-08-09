require 'yaml'

module Robot
  class Table
    attr_reader :min_point, :max_point

    def intiailize
      @min_point = set_min_point
      @max_point = set_max_point
    end

    private

    def set_min_point

    end

    def set_max_point
    end

    def config_file
      root = File.expand_path('../../', __FILE__)
      thing = YAML.load_file(File.join(root, 'config.dir'))
    end
  end
end
