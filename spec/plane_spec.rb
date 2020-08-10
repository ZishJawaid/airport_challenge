require 'plane'

describe Plane do

  it 'is an instance of Plane' do
    expect(subject).to be_instance_of Plane
  end

  it 'responds to the method set_as_flying' do
    expect(subject).to respond_to(:set_as_flying)
  end


  it 'allows a plane to report it is flying' do
    plane = Plane.new
    plane.set_as_flying
    expect(plane).to be_flying
  end

end
