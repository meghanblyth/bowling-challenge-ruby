require_relative '../lib/bowlingscore.rb'
require 'rspec'

describe Bowlingscore do
  let(:bowlingscore) { described_class.new }

  describe '#roll' do

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

  describe '#perfectgame' do
    it 'has a total score of three hundred' do
      bowlingscore.roll(300)
      expect(bowlingscore.total).to eq 300
    end 
  end 

  describe '#frame' do
    it 'has two rolls' do
      expect(bowlingscore.frame).to eq 2
    end
  end

  describe '#game' do 
    it 'has ten frames' do 
      expect(bowlingscore.game(10)).to eq 10 
    end 
  end 

  # descrobe '#strike' do 
  #   it '' do 
  #     expect
  #   end 
  # end 

  # descrobe '#spare' do 
  #   it '' do 
  #     expect
  #   end 
  # end 

end
