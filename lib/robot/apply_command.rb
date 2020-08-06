module Robot
  class ApplyCommand

    def self.call(command, position)
      @command.(position)
    end
  end
end
