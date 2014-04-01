require 'spec_helper'

describe Contact do
  it { should validate_presence_of(:frequency) }
  it { should ensure_inclusion_of(:frequency).in_range(1..365) }
  it { should validate_numericality_of(:frequency).only_integer }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).scoped_to(:user_id) }
  it { should validate_presence_of(:user_id) }
end
