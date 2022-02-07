require "capybara/rspec"
require_relative "../../app"

feature 'index page' do
  scenario 'it greets users' do
    visit '/'
    expect(page).to have_content 'Hello there!'
  end
  scenario 'allows name entry' do
    visit '/'
    expect(page).to have_content 'Enter your name'
    fill_in('Name', with: 'Jane')
  end
end