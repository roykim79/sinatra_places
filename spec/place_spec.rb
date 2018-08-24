require 'rspec'
require 'place'

describe 'Place' do
  describe '.all' do
    it 'is empty at first' do
      expect(Place.all).to eq([])
    end
  end

  describe '#save' do
    it 'add a new place instance to the places list' do
      place = Place.new()
      place.save()
      expect(Place.all).to eq([place])
    end

  end
end
