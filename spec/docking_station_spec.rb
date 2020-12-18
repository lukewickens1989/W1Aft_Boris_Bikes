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

    it 'should be able to take default capacity of bikes' do
      20.times { ds.return_bike(Bike.new) }
      expect(ds.station.length).to eq(20)
    end

    it 'should not accept more bikes than the docking station\'s capacity' do
      20.times { ds.return_bike(Bike.new) }
      expect{ ds.return_bike(Bike.new) }.to raise_error(RuntimeError, 'The docking station is full. Your bike cannot be docked.')
    end
  end

# ----------------------------------------------------------------
  #PRIVATE METHOD TESTING PRE-PRIVATIZATION

  # describe '#full?' do
  #   it 'should be able to be called on docking station' do
  #     expect(ds).to respond_to(:full?)
  #   end

  #   it 'should be able to tell if a docking station has room or is at capacity' do
  #     expect(ds.full?).to eq(false)
  #     20.times { ds.return_bike(Bike.new) }
  #     expect(ds.full?).to eq(true)
  #   end
  # end

  # describe '#empty?' do
  #   it "should be able to be called on docking station" do
  #     expect(ds).to respond_to(:empty?)
  #   end

  #   it 'should return true if the station is empty' do
  #     expect(ds.empty?).to eq(true)
  #     ds.return_bike(Bike.new)
  #     expect(ds.empty?).to eq(false)
  #   end
  # end

end

