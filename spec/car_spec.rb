require 'car'


describe 'Car' do 

	describe 'attributes' do
		it 'allows reading and writing for :make' do
			car = Car.new
			car.make = 'whatever'
			expect(car.make).to eq('whatever')
		end

		it 'allows reading and writing for :year' do
			car = Car.new
			car.year = 1997
			expect(car.year).to eq(1997)
		end

		it 'allows reading and writing for :color' do
			car = Car.new
			car.color = 'black'
			expect(car.color).to eq('black')
		end

		it 'allows to read :wheels' do
			car = Car.new
			expect(car.wheels).to eq(4)
		end

		it 'allows to write :doors'
	end

	describe '.colors' do
		it 'returns an array of colors ' do
			c = ['blue', 'green','yellow']
			expect(Car.colors).to match_array(c)
		end
	end


	describe '#full_name' do
		it 'should return the passed values of 3 strings' do
			@honda = Car.new(:make => 'Honda', :year => 1997, :color => 'black')
			expect(@honda.full_name).to eq('Honda 1997 black')
		end

		

	end


	
end