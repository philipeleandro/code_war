require 'spec_helper'
require 'hamming_distance'

describe 'hamming_distance' do 
  it 'some examples' do
    expect(hamming_distance(25,87)).to eq(4)
    expect(hamming_distance(256,302)).to eq(4)
    expect(hamming_distance(543,634)).to eq(4)
    expect(hamming_distance(34013,702)).to eq(7)
  end
end