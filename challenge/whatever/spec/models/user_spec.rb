require 'rails_helper'

RSpec.describe User, type: :model do
	

	it 'is valid with all attributes' do
		user = User.new(name: 'string', email: 'ogidan@abv.bg')
		expect(user).to be_valid
	end

  it 'is not valid without a name' do
  	name = User.create(name: nil)
  	expect(name).to_not be_valid
  end

  it 'is not valid without email' do
  	user = User.create(name: 'string', email: nil)
  	expect(user).to_not be_valid
  end
end
