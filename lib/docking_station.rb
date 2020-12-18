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
    raise('There are currently no bikes avaiable.') if empty?
  end

  def return_bike(bike)
    raise('The docking station is full. Your bike cannot be docked.') if full?

    @station << bike
  end

  private

  def empty?
    @station.length == 0
  end

  def full?
    @station.length >= @capacity
  end
end
