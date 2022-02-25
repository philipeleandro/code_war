require 'spec_helper'
require 'sequence_classifier'

describe 'sequence_classifier' do
  it 'When array is unordered' do
    expect(sequence_classifier([3, 5, 8, 1, 14, 3])).to eq(0)
    expect(sequence_classifier([7, 5, 9, 1, 6, 3])).to eq(0)
    expect(sequence_classifier([10, 5, 11, 7, 8, 2])).to eq(0)
  end

  it 'When array is strictly increasing' do
    expect(sequence_classifier([3,5,8,9,14,23])).to eq(1)
    expect(sequence_classifier([4,7,10])).to eq(1)
    expect(sequence_classifier([10,20,30,31,40])).to eq(1)
  end

  it 'When array is not decreasing' do
    expect(sequence_classifier([3,5,8,8,14,14])).to eq(2)
    expect(sequence_classifier([8,8,8,8,8,9])).to eq(2)
    expect(sequence_classifier([8,8,9,9,10,10])).to eq(2)
  end

  it 'When array is strictly decreasing' do
    expect(sequence_classifier([14,9,8,5,3,1])).to eq(3)
    expect(sequence_classifier([9,8])).to eq(3)
    expect(sequence_classifier([20,19,7,5])).to eq(3)
  end

  it 'When array is not increasing' do
    expect(sequence_classifier([14,14,8,8,5,3])).to eq(4)
    expect(sequence_classifier([9,9,9,8,8,8])).to eq(4)
  end

  it 'When array is constant' do
    expect(sequence_classifier([8,8,8,8,8,8])).to eq(5)
    expect(sequence_classifier([3,3,3,3])).to eq(5)
  end
end