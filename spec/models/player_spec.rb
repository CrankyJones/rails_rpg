require 'rails_helper'

describe Player do
  it { should belong_to :user }
  it { should belong_to :location }
  it { should validate_presence_of :role }
  it { should validate_presence_of :level }
  it { should validate_presence_of :attack }
  it { should validate_presence_of :health }
end