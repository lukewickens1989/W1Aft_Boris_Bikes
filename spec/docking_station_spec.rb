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
  end
end
