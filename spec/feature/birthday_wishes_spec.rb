require "capybara/rspec"
require_relative "../../app"

feature 'birthday wishes' do
  scenario 'wishes user happy birthday' do
    visit '/birthday_wishes'
    expect(page).to have_content 'Happy Birthday'
  end
end