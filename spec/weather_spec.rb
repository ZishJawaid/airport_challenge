require 'weather'

describe Weather do
  it 'is an instance of weather' do
    expect(subject).to be_instance_of Weather
  end
  it 'is expected to respond to weather_array' do
    expect(subject).to respond_to :weather_array
  end

  describe '#initialize' do
    it 'generates a random weather condition' do
      expect(subject.weather).to eq "sunny" || "stormy"
    end
  end

end
