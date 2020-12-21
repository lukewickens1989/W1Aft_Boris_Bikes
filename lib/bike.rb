# frozen_string_literal: true

class Bike
  attr_reader :status

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
