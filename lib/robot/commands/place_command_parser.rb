module Robot
  module Commands
    module PlaceCommandParser
      def parse(command)
        command.gsub('PLACE ', '').split(",")
      end
    end
  end
end
