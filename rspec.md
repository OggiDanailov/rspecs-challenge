
Validation and Verification approach of writing code:
- Write code
- Write tet
- Run test
- clean up code

Test Driven Development (TDD)
(red, green, refactor)
you will write a failing test, then fix it, then clean it
- write test
- write the code
- run test
- clean up code

 Behavior Driven Development (BDD)
 is a subset of Test Driven Development

- Rather than simply method names, you write expectations out as behaviors in the test description

RSPEC gem (Ruby Specification)

Rspec gem is the most common testing tool for 
for Ruby and Rails.
- Structure of Rspec file - it ends on _spec.rb

.Spec file (car.rb)
	.example group  (describe)
		.nested group (describe/context)
			.example (it)
				.expectation expect()to()
			end
		end
	end
	-----	-----	-----	-----	-----	-----
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


	-----	-----	-----	-----	-----	-----
	List of Matchers:
	https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
	-----	-----	-----	-----	-----	-----
	instructions for starting rspec with ruby;
	- create a folder and run inside:
	- gem install rspec
	- rspec init 
	YOu will get an extra folder named spec inside of which you will have spec_helper
	-----	-----	-----	-----	-----	-----
	
	RSPEC in RAILS
	
	- add this to the Gemfile
	group :development, :test do
  gem 'rspec-rails', '~> 3.6'
end

 - bundle install
 - rails g rspec:install
	
			
	
	
	















