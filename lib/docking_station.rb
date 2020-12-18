# frozen_string_literal: true

require 'bike'

class DockingStation
  attr_reader :station

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @station = []
  end

  def release_bike
    raise('There are currently no bikes avaiable.') if @station.empty?
  end

  def return_bike(bike)
    raise("The docking station is full. Your bike cannot be docked.") if @station.length > @capacity
    @station << bike
  end
end
