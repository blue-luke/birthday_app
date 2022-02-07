require "capybara/rspec"
require_relative "../../app"

feature 'birthday wishes' do
  # scenario 'wishes user happy birthday' do
  #   visit '/birthday_wishes'
  #   expect(page).to have_content 'Happy Birthday'
  # end
  # scenario 'wishes specific user happy birthday' do
  #   visit '/'
  #   fill_in('Name', with: 'Jane')
  #   click_button("Provide details")
  #   expect(page).to have_content 'Happy Birthday Jane!'
  # end
  scenario 'wishes specific user happy birthday' do
    visit '/'
    fill_in('Name', with: 'Jane')
    fill_in('Day', with: '9')
    select "February", :from => "month-names"
    click_button("Provide details")
    expect(page).to have_content 'Your birthday will be in 1 day, Jane'
  end
  scenario 'wishes specific user happy birthday' do
    visit '/'
    fill_in('Name', with: 'John')
    fill_in('Day', with: '10')
    select "February", :from => "month-names"
    click_button("Provide details")
    expect(page).to have_content 'Your birthday will be in 2 days, John'
  end
end