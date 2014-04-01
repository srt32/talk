require 'spec_helper'

feature 'User adds a contact' do

  scenario 'with valid name and frequency' do
    sign_in
    visit root_path
    fill_in 'Name', with: 'Nick'
    fill_in 'Frequency', with: 7
    click_on 'Add'
    expect(page).to have_content("added Nick")
    expect(page).to have_content('Nick')
    expect(page).to have_content(7)
  end

  scenario 'with invalid frequency' do
    sign_in
    visit root_path
    fill_in 'Name', with: 'Nick'
    fill_in 'Frequency', with: 0
    click_on 'Add'
    expect(page).to have_content('Frequency is not included')
  end

end
