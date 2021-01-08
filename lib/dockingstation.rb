
require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  attr_reader :bikes

  private

  def empty?
    fail 'No bikes available' if @bikes.empty?
  end

  def full?
    fail 'Docking station full' if @bikes.length == 20
  end

end
