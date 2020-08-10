require_relative 'plane'

class Airport

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
