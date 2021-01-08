require 'dockingstation'

describe DockingStation do

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
  
  it {is_expected.to respond_to(:release_bike)}

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    # it 'releases working bikes' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end

    it 'raises an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'docks a bike and stores' do
    bike = Bike.new
    expect(subject.dock(bike)).to include(bike)
  end

  it {is_expected.to respond_to :bikes}

  it 'show me what you got' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end
end






# describe '#release_bike' do
# 		it { is_expected.to respond_to :release_bike}
# 		# Using a '#' before a method name implies that it is an instance method.
# 		it 'raises an error when there are no bikes available' do
# 			expect { subject.release_bike }.to raise_error 'No bikes available'
# 	 	end
