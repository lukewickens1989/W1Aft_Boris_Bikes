# frozen_string_literal: true

class Bike
  attr_accessor :status

  def initialize
    @status = true
  end

  def working?
    @status
  end

  def broken
    @status = false
  end
end
