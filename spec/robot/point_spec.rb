require 'spec_helper'

describe Robot::Point do
  let(:point) { described_class.new(x: 0, y: 0) }

  context '#north' do
    it 'returns a point object with y axis incremented by 1' do
      expect(point.north).to eq(Robot::Point.new(x: 0, y: 1))
    end
  end

  context '#south' do
    it 'returns a point object with y axis decremented by 1' do
      expect(point.south).to eq(Robot::Point.new(x: 0, y: -1))
    end
  end

  context '#east' do
    it 'returns a point object with x axis incremented by 1' do
      expect(point.east).to eq(Robot::Point.new(x: 1, y: 0))
    end
  end

  context '#west' do
    it 'returns a point object with x axis decremented by 1' do
      expect(point.west).to eq(Robot::Point.new(x: -1, y: 0))
    end
  end

end
