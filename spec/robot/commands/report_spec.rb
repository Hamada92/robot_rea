# frozen_string_literal: true

require 'spec_helper'

describe Robot::Commands::Report do
  let(:point) { Robot::Point.new(x: 0, y: 0) }
  let(:position) do
    Robot::Position.new(point: point, direction: Robot::Directions::NORTH)
  end

  it 'prints the position to stdout' do
    expect { described_class.call(position) }.to output("0, 0, NORTH\n").to_stdout
  end
end
