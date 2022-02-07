require 'spec_helper'
require 'sort_array'

describe 'sort_array' do
  it 'some examples' do
    expect(sort_array([5, 3, 2, 8, 1, 4, 11])).to eq([1, 3, 2, 8, 5, 4, 11])
  end

  it 'some examples' do
    expect(sort_array([])).to eq([])
  end

  it 'some examples' do
    expect(sort_array([1, 111, 11, 11, 2, 1, 5, 0])).to eq([1, 1, 5, 11, 2, 11, 111, 0])
  end

  it 'some examples' do
    expect(sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it 'some examples' do
    expect(sort_array([7,5])).to eq([5,7])
  end

  it 'some examples' do
    expect(sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5])).to eq([0, 1, 2, 3, 4, 5, 8, 7, 6, 9])
  end
end