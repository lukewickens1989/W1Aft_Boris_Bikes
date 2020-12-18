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

    it 'expects the bike to be working' do
      bike_test = Bike.new
      expect(bike_test.working?).to eq(true)
    end

    it 'should raise an error if there are no bikes currently docked' do
      @station = []
      expect { ds.release_bike }.to raise_error(RuntimeError, 'There are currently no bikes avaiable.')
    end
  end

  describe '#return_bike' do
    it 'class should respond to return_bike method' do
      expect(ds).to respond_to(:return_bike)
    end

    it 'return_bike should take an argument of bike' do
      expect(ds).to respond_to(:return_bike).with(1).argument
    end

    it 'should add the bike to the station variable' do
      bike = Bike.new
      ds.return_bike(bike)
      expect(ds.station).to eq([bike])
    end

    it 'should not accept more bikes than the docking station\'s capacity' do
      bike1 = Bike.new
      bike2 = Bike.new
      bike3 = Bike.new
      bike4 = Bike.new
      ds.return_bike(bike1)
      ds.return_bike(bike2)
      ds.return_bike(bike3)
      expect(ds.station).to eq([bike1, bike2, bike3])
      expect(ds.station.length).to eq(3)
      ds.return_bike(bike4)
      expect{ ds.return_bike(bike4) }.to raise_error(RuntimeError, "The docking station is full. Your bike cannot be docked.")

    end
  end
end
