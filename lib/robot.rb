require "robot/version"
require 'robot/point'
require 'robot/position'
require 'robot/directions'
require 'robot/commands'
require 'robot/command_proxy'

module Robot
   class InvalidCommand < StandardError; end

  def self.run
    n = gets.chomp
    puts n
    Robot::CommandProxy.new(command_string: n).()
  end

end
