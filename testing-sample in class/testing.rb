describe 'if something is valid' do 
	it 'checks if the equation is valid' do
		a = 3 * 2
		b = 6
	expect(a).to be(b)	
	end

	it 'checks if email contains @' do
	email = 'ogidan@abv.bg'
	expect(email).to include('!')	
	end

	
end