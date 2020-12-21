require 'bike'

class Garage
  attr_reader :to_repair, :repaired

  def initialize
    @to_repair = []
    @repaired = []
  end

  def repair
    @to_repair.each do |bike|
      bike.status = true
      @repaired << bike
      @to_repair = []
    end
  end

end