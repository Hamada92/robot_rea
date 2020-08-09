# frozen_string_literal: true

module Robot
  module Commands
    class Right < Base
      RIGHT = 'RIGHT'

      def self.matches?(command)
        command == RIGHT
      end

      def self.call(position)
        position.right
      end
    end
  end
end
