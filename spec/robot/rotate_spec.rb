require 'spec_helper'

describe Robot::Rotate do
  let(:north) { Robot::Directions::NORTH }
  let(:west) { Robot::Directions::WEST }
  let(:east) { Robot::Directions::EAST }
  let(:right) { Robot::Directions::RIGHT }
  let(:position) { Robot::Position.new(direction: north) }

  context 'left' do
    it 'rotates a robot 90 degrees to the left' do
      expect(described_class.(position: position).direction).to eq(west)
    end
  end

  context 'right' do
    it 'rotates a robot 90 degrees to the right' do
      expect(described_class.(position: position, towards: right).direction)
        .to eq(east)
    end
  end
end
