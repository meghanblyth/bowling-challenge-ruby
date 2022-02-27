require_relative '../lib/bowlingscore.rb'
require 'rspec'

describe Bowlingscore do
  let(:bowlingscore) { Bowlingscore.new }

  describe '#initialize' do
    it 'initialize a new bowlingscore instance' do 
      expect(bowlingscore).to be_a Bowlingscore
    end 
  end 
end


