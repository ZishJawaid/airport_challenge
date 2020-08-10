require_relative 'plane'

class Airport

  attr_reader :capacity

  def initialize(capacity = 100)
    @plane = []
    @capacity = capacity
  end

  def land(plane)

    raise "Airport full, you can't land" if @plane.size >= 100
    @plane << plane
    @plane.last.set_as_landed
    @plane
  end

  def take_off
    @plane.last.set_as_flying
    @plane
  end

end
