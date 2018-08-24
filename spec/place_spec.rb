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
      place = Place.new('foo')
      place.save()
      expect(Place.all).to eq([place])
    end
  end

  describe 'name' do
    it 'returns the name of the place' do
      place = Place.new('foo')
      expect(place.name).to eq('foo')
    end

    it 'changes the name value to the name passed in as a parameter' do
      place = Place.new('foo')
      place.name = 'bar'
      expect(place.name).to eq('bar')
    end
  end

end
