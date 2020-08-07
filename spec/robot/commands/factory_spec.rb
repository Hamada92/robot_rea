require 'spec_helper'

describe Robot::Commands::Factory do

  context 'when command is PLACE 0,1,NORTH' do
    it 'returns the place command class' do
      command_string = 'PLACE 0,1,NORTH'
      expect(described_class.build(command_string)).to eq(Robot::Commands::Place)
    end
  end

  context 'when command is MOVE' do
    it 'returns the move command class' do
      command_string = 'MOVE'
      expect(described_class.build(command_string)).to eq(Robot::Commands::Move)
    end
  end

  context 'when command is RIGHT' do
    it 'returns the right command class' do
      command_string = 'RIGHT'
      expect(described_class.build(command_string)).to eq(Robot::Commands::Right)
    end
  end

   context 'when command is REPORT' do
    it 'returns the report command class' do
      command_string = 'REPORT'
      expect(described_class.build(command_string)).to eq(Robot::Commands::Report)
    end
  end

  context 'when command is invalid' do
    it 'raises an InvalidCommand exception' do
      command_string = 'PLAY'
      expect { described_class.build(command_string) }.to raise_error(Robot::InvalidCommand)
    end
  end
end
