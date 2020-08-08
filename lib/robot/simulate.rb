require_relative 'command_proxy'

n = gets
Robot::CommandProxy.new(command_string: n).()

