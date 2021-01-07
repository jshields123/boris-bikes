require 'dockingstation'



describe Dockingstation do
  it {is_expected.to respond_to(:release_bike)}

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'docks a bike and stores' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end

  it {is_expected.to respond_to :bike}

  it 'show me what you got' do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  end






# describe '#release_bike' do
# 		it { is_expected.to respond_to :release_bike}
# 		# Using a '#' before a method name implies that it is an instance method.
# 		it 'raises an error when there are no bikes available' do
# 			expect { subject.release_bike }.to raise_error 'No bikes available'
# 	 	end
