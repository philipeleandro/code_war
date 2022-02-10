require 'spec_helper'
require 'pell'

describe 'pell' do
  it 'some example' do
    expect(pell(1)).to eq(1)
  end
  
  it 'some example' do
    expect(pell(2)).to eq(2)
  end
  
  it 'some example' do
    expect(pell(3)).to eq(5)
  end

  it 'some example' do
    expect(pell(4)).to eq(12)
  end
end