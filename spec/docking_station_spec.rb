# frozen_string_literal: true

require 'docking_station'

RSpec.describe DockingStation do
  let(:ds) { described_class.new }

  describe 'initialization of class' do
    it 'should initialize correctly' do
      expect(ds).to be_instance_of(DockingStation)
    end

    it 'should be initialized with an array to store bikes' do
      expect(ds.station).to eq([])
    end
  end

  describe '#release_bike' do
    it 'class should respond to release_bike method' do
      expect(ds).to respond_to(:release_bike)
    end

    it 'should return a new instance of the bike class when called' do
      expect(ds.release_bike).to be_instance_of(Bike)
    end

    it 'expects the bike to be working' do
      bike_test = Bike.new
      expect(bike_test.working?).to eq(true)
    end

  end
end
