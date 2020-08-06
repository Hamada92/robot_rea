module Robot
  class Rotate
    class << self
      def call(position:, towards: :LEFT)
        new_direction = options[towards][position.direction]
        position.class.new(point: position.point, direction: new_direction)
      end

      private

      def options
        {
          LEFT: {
            EAST:  :NORTH,
            NORTH: :WEST,
            WEST:  :SOUTH,
            SOUTH: :EAST,
          },
          RIGHT: {
            EAST:  :SOUTH,
            SOUTH: :WEST,
            WEST:  :NORTH,
            NORTH: :EAST,
          }
        }.freeze
      end
    end
  end
end
