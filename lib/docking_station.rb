<<<<<<< HEAD
require_relative 'Bike'

class DockingStation
	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def release_bike
		fail 'No bikes available' if @bikes.empty?
		@bikes.pop
	end

	def dock(bike)
		fail 'Docking station full' if @bikes.count >= 20
		@bikes << bike
	end
end


=======
require_relative 'bike'
require_relative 'van'

class DockingStation

  attr_reader :bikes, :bikes_broken

  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @bikes_broken = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Error: Docking Station Full' if full?
  	if bike.working?
      @bikes << bike
    else
      @bikes_broken << bike
    end
  end

  def release_bike
    fail 'Error. No bikes available' if empty?
    @bikes.pop
  end

  def release_broken_bikes
    @bikes_broken.pop(@bikes_broken.count)
  end

  private

  def full?
    @bikes.count + @bikes_broken.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
<<<<<<< HEAD:lib/DockingStation.rb



# station = DockingStation.new
# 10.times do bike = Bike.new
# end

# p station.full?



  #def empty_bikes
  # return 'Error. No bikes available'
  #end
>>>>>>> day-three
=======
>>>>>>> day-four:lib/docking_station.rb
