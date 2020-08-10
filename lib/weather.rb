class Weather
  attr_reader :weather

  def initialize
    @weather = weather_array.sample
  end

  def weather_array
    ["sunny", "sunny", "stormy", "sunny", "sunny"]
  end

end
