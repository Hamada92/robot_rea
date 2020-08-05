require 'spec_helper'

describe Robot::Rotate do
  context 'left' do
    it 'rotates a robot 90 degrees to the left' do
      position = Robot::Position.new(direction: Robot::Directions::NORTH)
      expect(described_class.(position: position).direction).to eq(Robot::Directions::WEST)
    end
  end
end
