require 'bike.rb'

class DockingStation
  attr_reader :station

  def initialize
    @station = []
  end

  def release_bike; 
    new_bike = Bike.new
  end
end
