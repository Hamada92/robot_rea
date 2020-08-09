# frozen_string_literal: true

require 'spec_helper'

describe Robot::CommandProxy do
  let(:position) do
    Robot::Position.new(point: point, direction: Robot::Directions::NORTH)
  end
  let(:move) { 'MOVE' }
  let(:right) { 'RIGHT' }
  let(:left) { 'LEFT' }
  let(:place) { 'PLACE 0,0,NORTH' }

  context 'when within the table limits' do
    let(:point) { Robot::Point.new(x: 0, y: 0) }

    it 'applies the command and returns the new position' do
      expect(described_class.new(command_string: move, position: position).call).to(
        eq(position.north)
      )
    end
  end

  context 'when outside of the table limits' do
    let(:point) { Robot::Point.new(x: 0, y: 4) }

    it 'ignores the command and returns the same position' do
      expect(described_class.new(command_string: move, position: position).call).to(
        eq(position)
      )
    end
  end

  context 'when not placed yet' do
    it 'ignores the command' do
      expect(described_class.new(command_string: move, position: nil).call).to(
        eq(nil)
      )
    end
  end
end
