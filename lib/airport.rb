require_relative 'plane'

class Airport

  attr_reader :capacity

  DEFAULT_CAPACITY = 100

  def initialize(capacity = DEFAULT_CAPACITY)
    @plane = []
    @capacity = capacity
  end

  def land(plane)
    raise "Airport full, you can't land" if full?
    @plane << plane
    @plane.last.set_as_landed
    @plane
  end

  def take_off
    @plane.last.set_as_flying
    @plane
  end

  private

  def full?
    @plane.size >= capacity
  end

end
