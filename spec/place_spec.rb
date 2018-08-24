require 'rspec'
require 'place'

describe 'Place' do
  describe '.all' do
    it 'is empty at first' do
      expect(Place.all).to eq([])
    end
  end
end
