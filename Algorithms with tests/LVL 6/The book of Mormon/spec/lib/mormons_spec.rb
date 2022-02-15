require 'spec_helper'
require 'mormons'

describe "Basic tests" do
  it "Some examples" do
    expect(mormons(10,3,9)).to eq(0) 
    expect(mormons(99,2,99)).to eq(0)
    expect(mormons(40,2,120)).to eq(1)
    expect(mormons(40,2,121)).to eq(2)
    expect(mormons(20000,2,7000000000)).to eq(12) 
  end
end