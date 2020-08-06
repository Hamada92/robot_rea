module Robot
  class Rotate
    class << self
      def call(position:, towards: :LEFT)
        new_direction = options[towards][position.direction]
        position.class.new(point: position.point, direction: new_direction)
      end

      private


    end
  end
end
