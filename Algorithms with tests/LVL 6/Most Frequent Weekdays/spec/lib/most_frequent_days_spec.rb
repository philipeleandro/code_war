require 'spec_helper'
require 'most_frequent_days'

describe 'most_frequent_days' do
  it 'some tests' do
    expect(most_frequent_days(1770)).to eq(['Monday'])
    expect(most_frequent_days(2016)).to eq(['Friday', 'Saturday'])
    expect(most_frequent_days(1910)).to eq(['Saturday'])
    expect(most_frequent_days(2001)).to eq(['Monday'])
  end
end