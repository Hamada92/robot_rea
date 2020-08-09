# frozen_string_literal: true

require 'spec_helper'

describe Robot::Game do
  let(:input) do
    <<~INPUT
      PLACE 0,0,NORTH
      MOVE
      REPORT
    INPUT
  end

  it 'applies the commands and reports the position to stdout' do
    expect { described_class.call(input: StringIO.new(input)) }.to output("0, 1, NORTH\n").to_stdout
  end
end
