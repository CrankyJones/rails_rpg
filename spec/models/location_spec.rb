require 'rails_helper'

describe Location do
  it { should have_many :players }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end