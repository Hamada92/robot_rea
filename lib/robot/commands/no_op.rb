# frozen_string_literal: true

module Robot
  module Commands
    # A no operation command that gets returned to avoid nil exceptions when the command the user
    # enters is invalid. The idea is based on the null pointer design pattern

    class NoOp < Base
      def self.matches?(_command)
        true
      end

      def self.call(position)
        position
      end
    end
  end
end
