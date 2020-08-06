require 'spec_helper'

describe Robot::Position do
  let(:position) { described_class.new(direction: Robot::Directions::NORTH) }

  context '#left' do
    subject { position.left }
    it { is_expected.to be_a(Robot::Position) }

    it 'turns the direction to the left' do
      expect(subject.direction).to eq(Robot::Directions::WEST)
    end
  end

  context '#right' do
    subject { position.right }
    it { is_expected.to be_a(Robot::Position) }

    it 'turns the direction to the right' do
      expect(subject.direction).to eq(Robot::Directions::EAST)
    end
  end

  context '#north' do
    subject { position.north }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.not_to eq(position) }
  end

  context '#south' do
    subject { position.south }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.not_to eq(position) }
  end

  context '#east' do
    subject { position.east }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.not_to eq(position) }
  end

  context '#west' do
    subject { position.west }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.not_to eq(position) }
  end
end
