require "robot/version"
require 'robot/point'
require 'robot/position'
require 'robot/forward'
require 'robot/directions'
require 'robot/commands'
require 'robot/command_proxy'

module Robot
   class InvalidCommand < StandardError; end
end
