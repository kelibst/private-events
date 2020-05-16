require 'rails_helper'
require 'capybara/rspec'

describe 'Signin authentication test', type: :feature do
  user = FactoryGirl.create(:user)

  it 'ensures sign in is working' do
    visit '/login'
    within('form') do
      fill_in 'username', with: user.username
      fill_in 'email', with: user.email
    end
    click_button 'Sign in'

    expect(page).to have_content 'You have successfully logged in.'
  end
end

RSpec.describe 'checking sign up is accessible', type: :system do
  describe 'signup page is accessible' do
    it 'shows the right content from signup page' do
      visit '/signup'
      expect(page).to have_content('Account')
    end
  end
end
