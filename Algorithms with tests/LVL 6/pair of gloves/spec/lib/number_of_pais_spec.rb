require 'spec_helper'
require 'number_of_pairs'

describe 'number_of_pairs' do
  it 'some examples' do
    expect(number_of_pairs(["red","red"])).to eq(1)
    expect(number_of_pairs(["red","green","blue"])).to eq(0)
    expect(number_of_pairs(["gray","black","purple","purple","gray","black"])).to eq(3)
    expect(number_of_pairs([])).to eq(0)
    expect(number_of_pairs(["red","green","blue","blue","red","green","red","red","red"])).to eq(4)
  end
end