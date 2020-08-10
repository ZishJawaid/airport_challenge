require 'plane'

describe Plane do

  it 'is an instance of Plane' do
    expect(subject).to be_instance_of Plane
  end

  it 'responds to the method "report_state"'do
    expect(subject).to respond_to(:report_state)
  end

end
