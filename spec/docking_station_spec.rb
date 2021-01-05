require 'dockingstation'

describe Dockingstation do
  docking_station = Dockingstation.new
end

describe 'release bike' do
  it 'releases bike' do 
    expect(docking_station.release_bike).to eq "hey"
  end
end


# describe '#release_bike' do
# 		it { is_expected.to respond_to :release_bike}
# 		# Using a '#' before a method name implies that it is an instance method.
# 		it 'raises an error when there are no bikes available' do
# 			expect { subject.release_bike }.to raise_error 'No bikes available'
# 	 	end