module Robot
  module Commands
    class Report < Base
      REPORT = 'REPORT'.freeze

      def self.matches?(command)
        command == REPORT
      end

      def self.call(position)
        position.right
      end
    end
  end
end
