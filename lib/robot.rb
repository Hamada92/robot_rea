require "robot/version"
require 'robot/point'
require 'robot/position'
require 'robot/directions'
require 'robot/commands'
require 'robot/command_proxy'
require 'robot/table'
require 'robot/game'

module Robot
  def self.run
    Game.()
  end
end
