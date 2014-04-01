require 'spec_helper'

describe User do
  describe "Contacts association" do
    it { should have_many(:contacts) }
  end
end
