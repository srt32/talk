require 'spec_helper'

describe 'Contacts API' do
  context 'GET index' do
    it 'returns an array of contacts' do
      contact = create(:contact)

      get '/api/v1/contacts', {}, {}
      contacts = JSON.parse(response.body)['contacts']

      expect(contacts.length).to eq 1
    end
  end
end
