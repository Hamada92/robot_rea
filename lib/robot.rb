require "robot/version"
require 'robot/point'
require 'robot/position'
require 'robot/directions'
require 'robot/commands'
require 'robot/command_proxy'

module Robot
   class InvalidCommand < StandardError; end

  def self.run
    n = gets
    Robot::CommandProxy.new(command_string: n).()
  end

end
