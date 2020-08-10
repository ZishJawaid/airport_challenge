require 'airport'

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

end
