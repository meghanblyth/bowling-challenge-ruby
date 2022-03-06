require_relative '../lib/bowlingscore.rb'
require 'rspec'

describe Bowlingscore do
  let(:bowlingscore) { described_class.new }

  describe '#roll' do
    it 'returns 5 if you roll 5' do
      expect(bowlingscore.roll(5)).to eq 5
    end

    it 'returns 7 if you roll 7' do
      expect(bowlingscore.roll(7)).to eq 7
    end

    it 'returns the number of pins that were knocked down' do
      expect(bowlingscore.roll(6)).to eq 6
    end

    it 'adds pin to the score total' do
      expect { bowlingscore.roll(8) }.to change { bowlingscore.total }.by 8
    end

    it 'adds multiple rolls to the score total' do
      bowlingscore.roll(5)
      bowlingscore.roll(6)
      bowlingscore.roll(7)
      expect(bowlingscore.total).to eq 18
    end
  end

  describe '#guttergame' do
    it 'has a total score of zero' do
      expect(bowlingscore.total).to eq 0
    end
  end

  describe '#frame' do
    it 'has two rolls' do
      expect(bowlingscore.frame).to eq 2
    end
  end
end
