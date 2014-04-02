require 'spec_helper'

feature 'On the homepage' do

  scenario 'before signing in sent to log in' do
    visit root_path
    expect(page).to have_content('Sign in')
  end

  scenario 'after signing in user sees dashboard' do
    create_and_sign_in
    expect(page).to have_content('Your Contacts')
  end
end
