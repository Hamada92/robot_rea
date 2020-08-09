require 'spec_helper'

describe Robot::Table do
  let(:table) { described_class.new }
  it 'sets up the table size from the config file' do
    expect(table.min_point).to eq(Robot::Point.new(x: 0, y: 0))
    expect(table.max_point).to eq(Robot::Point.new(x: 4, y: 4))
  end
end
