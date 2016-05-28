class Bike
<<<<<<< HEAD
<<<<<<< HEAD
  def working?
    true
  end
=======
=======

	attr_writer :working

	def initialize
		@working = true
	end

>>>>>>> day-four
	def working?
		@working
	end

	def report_broken
		@working = false
	end

	def fix_bike
		@working = true
	end
<<<<<<< HEAD
>>>>>>> day-three
=======

>>>>>>> day-four
end
