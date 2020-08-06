module Robot
  module Commands
    class Base
      def self.call
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end
