# frozen_string_literal: true

require 'robot/version'
require 'robot/point'
require 'robot/position'
require 'robot/directions'
require 'robot/commands'
require 'robot/command_proxy'
require 'robot/table'
require 'robot/game'

module Robot
  def self.run
    Game.call
    instructions
  end

  def instructions
    puts <<~HEREDOC
      Welcome to the Robot game
      Please enter one of the following commands:
      PLACE 0,0,NORTH (PLACE X,Y,DIRECTION)
      MOVE
      LEFT
      RIGHT
      REPORT

      invalid commands are ignored.
      You must start with a place command.
    HEREDOC
  end
end
