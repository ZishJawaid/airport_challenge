require_relative 'plane'

class Airport

  def land(plane)
    @plane = plane
  end

  def take_off
    @plane.set_as_flying
    @plane
  end

end
