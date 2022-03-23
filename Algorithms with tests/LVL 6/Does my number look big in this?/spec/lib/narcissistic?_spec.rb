require 'spec_helper'
require 'narcissistic?'

describe 'narcissistic?' do 
  it 'some examples' do
    expect(narcissistic?(5)).to eq(true)
    expect(narcissistic?(153)).to eq(true)
    expect(narcissistic?(1633)).to eq(false)
  end
end