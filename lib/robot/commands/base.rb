# frozen_string_literal: true

module Robot
  module Commands
    # Command Base/Interface
    class Base
      def self.matches(_command)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

      def self.call
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
