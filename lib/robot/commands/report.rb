# frozen_string_literal: true

module Robot
  module Commands
    class Report < Base
      REPORT = 'REPORT'

      def self.matches?(command)
        command == REPORT
      end

      def self.call(position)
        puts position
        position
      end
    end
  end
end
