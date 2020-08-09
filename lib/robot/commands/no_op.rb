# A no operation command that's returned to avoid nil exceptions when the command the user
# enters is invalid. The idea is based on the null pointer design pattern

module Robot
  module Commands
    class NoOp < Base

      def self.matches?(command)
        true
      end

      def self.call(position)
        position
      end
    end
  end
end
