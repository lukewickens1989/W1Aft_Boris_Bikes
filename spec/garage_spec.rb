require 'garage'

RSpec.describe Garage do
  let(:garage) { described_class.new }

  describe '#initilization' do
    it 'should be instance of Garage' do
      expect(described_class.new).to be_instance_of(Garage)
    end

    it 'should be initialized with an place to put broken bikes' do
      expect(garage.to_repair).to eq([])
    end

    it 'should be initialized with a place to put working bikes' do
      expect(garage.repaired).to eq([])
    end
  end

  describe '#repair' do
    it 'should move the bike from to_repair to repaired array' do
      bike1 = Bike.new
      bike2 = Bike.new
      garage.to_repair << bike1
      garage.to_repair << bike2
      garage.repair
      expect(garage.to_repair).to eq([])
      expect(garage.repaired).to eq([bike1, bike2])
    end
    it 'should change the status of the broken bikes to true' do
      bike1 = Bike.new
      bike2 = Bike.new
      bike1.broken
      bike2.broken
      garage.to_repair << bike1
      garage.to_repair << bike2
      garage.repair
      expect(bike1.status).to eq(true)
      expect(bike2.status).to eq(true)
    end 
  end
end