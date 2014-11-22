require 'rails_helper'

RSpec.describe User, :type => :model do

	it 'should require an email' do
	  no_email = User.new(email: "", password: "password", password_confirmation: "password")
	  expect(no_email).to_not be_valid
	end
end
