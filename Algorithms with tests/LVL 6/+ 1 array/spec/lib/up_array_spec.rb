require 'spec_helper'
require 'up_array'

describe 'up_array' do
  context 'normal case' do
    it 'some examples' do
      expect(up_array([2,3,9])).to eq([2,4,0])
      expect(up_array([4,3,2,5])).to eq([4,3,2,6])
      expect(up_array([6, 3, 0, 2, 6, 0])).to eq([6, 3, 0, 2, 6, 1])
    end
  end

  context 'array empty' do
    it 'some examples' do
      expect(up_array([])).to eq(nil)
    end
  end

  context 'digit out of the limits' do
    it 'some examples' do
      expect(up_array([1,-9])).to eq(nil)
      expect(up_array([-1, 4, 8, 4, -1, 4])).to eq(nil)
      expect(up_array([1, 2, 33])).to eq(nil)
    end
  end
end