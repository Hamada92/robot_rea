require 'spec_helper'

describe Robot::Commands::Right do
  let(:position) { Robot::Position.new(direction: Robot::Directions::NORTH) }

  it 'turns the position of the robot to the right' do
    new_position = described_class.(position)
    expect(new_position.direction).to eq(Robot::Directions::EAST)
  end

  it 'does not change the point of the robot position' do
    new_position = described_class.(position)
    expect(new_position.point).to eq(position.point)
  end

end
