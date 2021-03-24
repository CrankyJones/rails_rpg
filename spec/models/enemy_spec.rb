require 'rails_helper'

describe Enemy do
  it { should belong_to :player }
  it { should validate_presence_of :monster }
  it { should validate_presence_of :attack }
  it { should validate_presence_of :health }
end