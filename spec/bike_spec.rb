<<<<<<< HEAD
=======
<<<<<<< HEAD
require "bike"

describe Bike do
  it "should respond to working?" do
    expect(subject).to respond_to(:working?)
  end
end
=======
#describe the bike class

>>>>>>> 2ac71710231427a244ee3d0e2c102d763dd5097c
require 'bike'

describe Bike do
	it 'checks if bike is working' do
		expect(subject).to respond_to :working?
	end

  it 'checks if a bike is broken' do
		subject.report_broken
    expect(subject.working?).to eq false
  end

	describe '#fix_bike' do
		it 'fixes the bike' do
			expect(subject.fix_bike).to eq subject.working?
		end
	end
end
>>>>>>> day-three
