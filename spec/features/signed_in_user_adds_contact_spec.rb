require 'spec_helper'

feature 'User adds a contact' do
  scenario 'with valid name and frequency' do
    sign_in
    visit root_path
    fill_in 'Name', with: 'Nick'
    fill_in 'Frequency', with: 7
    click_on 'Add'
    expect(page).to have_content('Nick')
    expect(page).to have_content(7)
  end

  def sign_in
    user = create(:user)
    visit sign_in_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end
end
