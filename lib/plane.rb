class Plane
  def set_as_flying
    @flying = true
  end

  def set_as_landed
    @flying = false
  end

  def flying?
    @flying
  end

end
