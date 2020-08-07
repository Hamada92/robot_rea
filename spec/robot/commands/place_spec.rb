require 'spec_helper'

describe Robot::Commands::Place do
  let(:position) { Robot::Position.new }

  context '.call' do
    subject { described_class.(x: 0, y: 0, f: Robot::Directions::NORTH) }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.to eq(position) }
  end

end
