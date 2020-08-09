# frozen_string_literal: true

require 'spec_helper'

describe Robot::Commands::PlaceCommandParser do
  let(:command) { 'PLACE 0,0,NORTH' }
  let(:parser) { Class.new { include Robot::Commands::PlaceCommandParser } }
  it 'parses the command into an array' do
    expect(parser.new.parse(command)).to eq(%w[0 0 NORTH])
  end
end
