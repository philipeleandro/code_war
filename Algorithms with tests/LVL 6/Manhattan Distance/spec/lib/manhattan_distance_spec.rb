require 'spec_helper'
require 'manhattan_distance'

describe 'manhattan_distance' do
  context 'return the right distance' do
    it 'example' do
      expect(manhattan_distance([1,1],[1,1])).to eq(0)
      expect(manhattan_distance([5,4],[3,2])).to eq(4)
      expect(manhattan_distance([1,1],[0,3])).to eq(3)
      expect(manhattan_distance([25, 39],[28, 39])).to eq(3)
    end
  end
end