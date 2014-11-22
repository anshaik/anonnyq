require 'rails_helper'

describe 'sign up', type: :feature do
	subject { page }

	before :each do
		visit new_user_registration_path
	end

	it 'should require email' do
		click_button "Sign up"
		expect(page).to have_content 'error'
	end

	describe 'with valid information' do
		before do
			fill_in :user_email, with: "john@smith.com"
			fill_in :user_password, with: "password"
			fill_in :user_password_confirmation, with: "password"
		end

		it 'should create user' do
		  expect { click_button "Sign up" }.to change(User,:count).by(1)
		end

		it 'should sign up a user with valid info' do
			click_button "Sign up"
			expect(page).to have_content 'success'
		end
	end
end

describe 'sign in', type: :feature do
  subject { page }
	let!(:user) { User.create(email: "john@smith.com", password: "password", password_confirmation: "password")}

  before :each do
		visit new_user_session_path
  end

  it { should have_selector('div.panel-title', 'Sign in')}

	 describe 'with valid info' do
	   before do 
	   	fill_in :user_email, with: "john@smith.com"
			fill_in :user_password, with: "password"
			click_button "Sign in"
	   end

	   it 'should sign the user in' do
	     expect(page).to have_content 'success'
	   end

	   it 'should redirect to the dashboard' do
	     expect(page.current_path).to eq(dashboard_path)
	   end
	 end
end