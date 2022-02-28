require_relative '../lib/bowlingscore.rb'
require 'rspec'

describe Bowlingscore do
  let(:bowlingscore) { Bowlingscore.new }

  describe '#initialize' do
    it 'initialize a new bowlingscore instance' do
      expect(bowlingscore).to be_a Bowlingscore
    end
  end

  it 'can roll a gutter game' do
    20.times { @bowlingscore.roll(0) }
    expect(@bowlingscore.score).to eq(0)
  end

  it 'can roll all ones' do
    20.times { @bowlingscore.roll(1) }
    expect(@bowlingscore.score).to eq(20)
  end
end
