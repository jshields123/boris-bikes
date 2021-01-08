
require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    fail 'Docking station full' if @bikes.length == @capacity
  end

end
