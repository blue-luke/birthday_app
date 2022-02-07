require "capybara/rspec"
require_relative "../../app"

feature 'index page' do
  scenario 'it greets users' do
    visit '/'
    expect(page).to have_content 'Hello there!'
  end
end