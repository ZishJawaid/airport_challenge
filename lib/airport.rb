require_relative 'plane'

class Airport

  attr_reader :capacity

  def initialize(capacity = 100)
    @capacity = capacity
  end

  def land(plane)
    @plane = plane
    @plane.set_as_landed
    @plane
  end

  def take_off
    @plane.set_as_flying
    @plane
  end

end
