module Robot
  module Commands
    class Place < Base
      extend PlaceCommandParser

      REGEX = /^\A(PLACE) \d,\d,(NORTH|EAST|WEST|SOUTH)\z/


      def self.matches?(command)
        command =~ REGEX
      end

      def self.call(x:, y:, f:)
        Robot::Position.new(point: Point.new(x: x, y: y), direction: f)
      end

      def self.build_from_string_command(command)
        x, y, f = parse(command)
        x = x.to_i
        y = y.to_i
        f = f.to_sym
        call(x: x, y: y, f: f)
      end
    end
  end
end
