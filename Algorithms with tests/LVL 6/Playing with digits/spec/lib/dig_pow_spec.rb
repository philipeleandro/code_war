require 'spec_helper'
require 'dig_pow'

describe 'dig pow' do
  it 'some examples' do
    expect(dig_pow(89, 1)).to eq(1)
    expect(dig_pow(92, 1)).to eq(-1)
    expect(dig_pow(46288, 3)).to eq(51)
  end
end