# frozen_string_literal: true

require 'bike'

class DockingStation
  attr_reader :station

  def initialize
    @station = []
  end

  def release_bike
    new_bike = Bike.new
  end

  def return_bike(bike)
    @station << bike
  end
end
