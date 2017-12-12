describe 'Expectation matchers'  do 

	describe  'equivalence matchers'  do
		it 'matches loose quality between two vars' do
			a = 2
			b = 2
			expect(a).to eq(b)
		end

		it 'matches strict quality between two vars' do
			a = 2
			b = 2.0
			expect(a).not_to eql(b)
		end

		it 'matches identity between two vars' do
			a = '2'
			b = '2'
			expect(a).not_to equal(b)
		end
	end


	describe 'truthiness matcher' do
		it 'will match true or false' do
			expect(1<2).to be(true)
			expect('something').to be_truthy
		end

	describe 'numeric comparison matchers' do
		it 'will match less/greater than' do
			expect(10).to be>9
		end
		it 'will include in a range' do
			expect(4).to be_between(4,6).inclusive
		end	
	end


	describe 'collection matchers' do
		it 'will match arrays' do
			array = [1,2,3]
			expect(array).to include(2, 3)
			expect(array).to start_with(1)
			expect(array).to end_with(3)
			expect(array).to match_array([1,2,3])
			expect(array).to contain_exactly(3,2,1)	
		end

		it 'will match strings' do
			string = 'whatever string'
			expect(string).to include('ing')
			expect(string).to start_with('w')
		end

		it 'will match hashes' do
			hash = {:oggi => 'male', :stephanie => 'female'}
			expect(hash).to include(:oggi)
		end

	describe 'other matchers' do
		it "strings with regex" do
			expect('123').to match(/\d{3}/)
			email = 'ogidan@abv.bg' 
			expect(email).to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
		end

		it 'will match object types' do
			expect([1,2,3]).to be_an(Array)
			expect('string').to be_a(String)
			expect('string').to be_kind_of(String)
			expect('string').to be_instance_of(String)
		end

		it 'will match objects with #respond_to' do
			string = 'whatever'
			expect(string).to respond_to(:length)
			expect(string).not_to respond_to(:sort)
		end

		it 'will match class instances with #have_attributes' do
			class Car 
				attr_accessor :model
			end
			car = Car.new
			car.model = 'honda'
			expect(car).to have_attributes(:model => 'honda')
		end

		it 'will match anything with @satisfy' do
			expect(12).to satisfy do |value|
				(value<15) && (value>11) && (value% 2 == 0)
			end
		end

	end

	end

































	end
















	
end