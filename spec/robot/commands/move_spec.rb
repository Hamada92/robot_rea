require 'spec_helper'

describe Robot::Commands::Move do
  let(:position) { Robot::Position.new }

  it 'moves the robot one step' do
    new_position = described_class.(position)
    expect(new_position.point.y).to eq(position.point.y + 1)
  end

end
