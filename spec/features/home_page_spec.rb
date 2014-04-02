require 'spec_helper'

feature 'After sign in' do
  scenario 'user sees dashboard' do
    create_and_sign_in
    expect(page).to have_content('Your Contacts')
  end
end
