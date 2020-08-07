require 'spec_helper'

describe Robot::Commands::Left do
  let(:position) { Robot::Position.new(direction: Robot::Directions::NORTH) }

  it 'turns the position of the robot to the left' do
    new_position = described_class.(position)
    expect(new_position.direction).to eq(Robot::Directions::WEST)
  end

  it 'does not change the point of the robot position' do
    new_position = described_class.(position)
    expect(new_position.point).to eq(position.point)
  end

end
