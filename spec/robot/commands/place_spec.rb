# frozen_string_literal: true

require 'spec_helper'

describe Robot::Commands::Place do
  let(:point) { Robot::Point.new(x: 0, y: 0) }
  let(:position) do
    Robot::Position.new(point: point, direction: Robot::Directions::NORTH)
  end

  context '.call' do
    subject { described_class.call(x: 0, y: 0, f: Robot::Directions::NORTH) }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.to eq(position) }
  end

  context '.build_from_string_command' do
    subject { described_class.build_from_string_command('PLACE 0,0,NORTH') }
    it { is_expected.to be_a(Robot::Position) }
    it { is_expected.to eq(position) }
  end
end
