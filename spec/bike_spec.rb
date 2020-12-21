# frozen_string_literal: true

require 'bike'

RSpec.describe Bike do
  let(:bike) { described_class.new }

  describe 'initialization of class' do
    it 'should be instance of Bike class' do
      expect(bike).to be_instance_of(Bike)
    end
  end

  describe '#working?' do
    it 'a new instance of Bike class should respond to working?' do
      expect(bike).to respond_to(:working?)
    end

    it 'a new instance of bike class should start off working' do
      expect(bike.status).to eq(true)
    end
  end

  describe '#broken' do
    it 'should change the status of a bike when called' do
      broken_bike = Bike.new
      broken_bike.broken
      expect(broken_bike.status).to eq(false)
    end
  end
end
