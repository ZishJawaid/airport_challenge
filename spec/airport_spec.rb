require 'airport'
require_relative './plane_spec.rb'

describe Airport do
  it 'is an instance of Airport' do
    expect(subject).to be_instance_of Airport
  end
  it 'responds to the method "land" with 1 argument' do
    expect(subject).to respond_to(:land).with(1).argument
  end
  it 'responds to the method "take_off"' do
    expect(subject).to respond_to(:take_off)
  end

  describe '#land' do
    it 'allows a plane to land' do
      plane = Plane.new
      expect(subject.land(plane)).to eq plane
    end
    it 'allows a plane to land and change status to landed' do
      plane = Plane.new
      expect { subject.land(plane) }.to change { plane.flying? }.to false
    end
  end

  describe '#take_off' do
    it 'allows a plane to take off' do
      plane = Plane.new
      subject.land(plane)
      expect(subject.take_off).to eq plane
    end

    it 'allows a plane to take off and change status to flying' do
      plane = Plane.new
      subject.land(plane)
      expect { subject.take_off }.to change { plane.flying? }.to true

    end

  end
end
